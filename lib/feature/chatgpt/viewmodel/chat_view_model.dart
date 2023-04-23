import 'dart:io';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/cache/chat_cache_manager.dart';
import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/provider/log_provider.dart';
import 'package:chatgptapp/feature/chatgpt/services/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatsViewModel extends ChangeNotifier {
  String apiKeys;
  Map<dynamic, Choices> _chats = {};
  Map<dynamic, Choices> get chats => _chats;
  late String openingChat;
  late NetworkManager networkManager;
  ChatCacheManager chatCachManager = ChatCacheManager();

  void changeOpeningChat(String key) {
    openingChat = key;
    notifyListeners();
  }

  Future<void> fetch() async {
    openingChat = HomePageConstant.title;
    await chatCachManager.fetch();
    _chats = chatCachManager.getAll();
    networkManager = NetworkManager(apiKeys);
    notifyListeners();
  }

  Future<Object> sendNewRequestForNewChat(String content, WidgetRef ref) async {
    final logCacheProvider = ref.read(logProvider);
    final Message sendingMessage = Message(
      content: content,
      role: BaseConstant.user,
    );
    final RequestDataModel rModel = RequestDataModel(
      model: ApiConstant.aIModel,
      messages: [sendingMessage],
    );
    final String dateTimeMillisecondEpoch =
        DateTime.now().millisecondsSinceEpoch.toString();
    late LogModel logModel;
    final response = await networkManager.post(requestDataModel: rModel);
    if (response.statusCode == HttpStatus.ok) {
      final networkResponse =
          NetworkResponse.fromJson(response.data as Map<String, dynamic>);

      logModel = LogModel(
        requestData: rModel,
        networkResponse: networkResponse,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );

      logCacheProvider.put(dateTimeMillisecondEpoch, logModel);

      final List<Choice> sendList = [
        Choice(index: 0, message: sendingMessage, finish_reason: 'stop'),
        networkResponse.choices[0],
      ];
      final key = await addNewChoicesChat(Choices(list: sendList));

      notifyListeners();
      openingChat = key;
      return key;
    } else {
      logModel = LogModel(
        requestData: rModel,
        networkResponse: null,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
      logCacheProvider.put(dateTimeMillisecondEpoch, logModel);
      notifyListeners();
      return false;
    }
  }

  Future<Object> sendRequestForCurrentChat(
      {required String content,
      required String key,
      required WidgetRef ref}) async {
    final logCacheProvider = ref.read(logProvider);
    final Message sendingMessage = Message(
      content: content,
      role: BaseConstant.user,
    );
    List<Message> messages = [];

    final List<Choice> choiceList = _chats[key]!.list;

    for (Choice element in choiceList) {
      final Message message = element.message;
      messages.add(message);
    }

    messages.add(sendingMessage);

    final RequestDataModel rModel = RequestDataModel(
      model: ApiConstant.aIModel,
      messages: messages,
    );

    final String dateTimeMillisecondEpoch =
        DateTime.now().millisecondsSinceEpoch.toString();
    late LogModel logModel;
    final response = await networkManager.post(requestDataModel: rModel);
    if (response.statusCode == HttpStatus.ok) {
      final networkResponse =
          NetworkResponse.fromJson(response.data as Map<String, dynamic>);
      logModel = LogModel(
        requestData: rModel,
        networkResponse: networkResponse,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );

      logCacheProvider.put(dateTimeMillisecondEpoch, logModel);

      final List<Choice> sendList = [
        Choice(index: 0, message: sendingMessage, finish_reason: 'stop'),
        networkResponse.choices[0],
      ];
      await updateChoicesChat(key, sendList);
      notifyListeners();
      openingChat = key;
      return key;
    } else {
      logModel = LogModel(
        requestData: rModel,
        networkResponse: null,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
      logCacheProvider.put(dateTimeMillisecondEpoch, logModel);
      notifyListeners();
      return false;
    }
  }

  Future<bool> removeChat(String key) async {
    try {
      _chats.remove(key);
      await chatCachManager.deleteElement(key);
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String> addNewChoicesChat(Choices chat) async {
    final key = DateTime.now().millisecondsSinceEpoch.toString();
    _chats[key] = chat;
    await chatCachManager.put(key, chat);
    notifyListeners();
    return key;
  }

  Future<void> updateChoicesChat(String key, List<Choice> list) async {
    final Choices choices = _chats[key]!;
    final newChoices = choices.copyWith(
      list: choices.list + list,
    );
    _chats.remove(key);
    _chats[key] = newChoices;
    await chatCachManager.deleteElement(key);
    await chatCachManager.put(key, newChoices);
    notifyListeners();
  }

  ChatsViewModel(this.apiKeys);
}

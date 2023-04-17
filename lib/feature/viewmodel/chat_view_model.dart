import 'dart:io';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/models/services_models/choice_model.dart';
import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:chatgptapp/feature/models/services_models/request_data_model.dart';
import 'package:chatgptapp/feature/models/services_models/response_model.dart';
import 'package:chatgptapp/feature/services/network_manager.dart';
import 'package:flutter/material.dart';

import '../models/services_models/message_model.dart';

class ChatsViewModel extends ChangeNotifier {
  final String apiKeys;
  Map<dynamic, Choices> _chats = {};
  Map<dynamic, Choices> get chats => _chats;
  String? openingChat = null;
  late NetworkManager networkManager;

  changeOpeningChat(String? key) {
    openingChat = key;
    notifyListeners();
  }

  fetch() async {
    // todo fetch from cache
    // await chatCachManager.fetch();
    // _chats = chatCachManager.getAll() as Map<dynamic, Choices>;
    networkManager = NetworkManager(apiKeys);
    notifyListeners();
  }

  Future<Object> sendNewRequest(String content) async {
    final sendingMessage = Message(
      content: content,
      role: BaseConstant.user,
    );
    final rModel = RequestDataModel(
      model: ApiConstant.aIModel,
      messages: [sendingMessage],
    );
    final response = await networkManager.post(requestDataModel: rModel);
    if (response.statusCode == HttpStatus.ok) {
      final networkResponse =
          NetworkResponse.fromJson(response.data as Map<String, dynamic>);
      final key = await addNewChoicesChat(Choices(list: [
        Choice(
          index: 0,
          finish_reason: "user ended",
          message: sendingMessage,
        ),
        networkResponse.choices[0]
      ]));
      notifyListeners();
      return key;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future<String> addNewChoicesChat(Choices chat) async {
    String key = DateTime.now().millisecondsSinceEpoch.toString();
    _chats[key] = chat;
    // todo save to cache
    // await chatCachManager.put(key, chat);
    notifyListeners();
    return key;
  }

  updateChoicesChat(String key, Choice data) async {
    _chats[key]!.list.add(data);
    // todo save to cache
    // await chatCachManager.deleteElement(key);
    // await chatCachManager.put(key, _chats[key]!);
    notifyListeners();
  }

  ChatsViewModel(this.apiKeys);
}

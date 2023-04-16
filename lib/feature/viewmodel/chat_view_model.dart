import 'package:chatgptapp/feature/cache/chat_cache_manager.dart';
import 'package:chatgptapp/feature/models/services_models/choice_model.dart';
import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:flutter/material.dart';

class ChatsViewModel extends ChangeNotifier {
  Map<dynamic, Choices> _chats = {};
  Map<dynamic, Choices> get chats => _chats;
  final chatCachManager = ChatCacheManager();

  fetch() async {
    await chatCachManager.fetch();
    _chats = chatCachManager.getAll();
  }

  addNewChoicesChat(Choices chat) {
    String key = DateTime.now().millisecondsSinceEpoch.toString();
    _chats[key] = chat;
    chatCachManager.put(key, chat);
    notifyListeners();
  }

  updateChoicesChat(String key, Choice data) async {
    _chats[key]!.list.add(data);
    await chatCachManager.deleteElement(key);
    await chatCachManager.put(key, _chats[key]!);
    notifyListeners();
  }
}

import 'package:chatgptapp/feature/models/services_models/choice_model.dart';
import 'package:flutter/material.dart';

class ChatsViewModel extends ChangeNotifier {
  Map<String, List<Choice>> _chats = {};
  Map<String, List<Choice>> get chats => _chats;

}
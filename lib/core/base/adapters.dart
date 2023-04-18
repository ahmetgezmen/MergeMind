import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

void adapters(){
  Hive.registerAdapter(MessageAdapter());
  Hive.registerAdapter(ChoiceAdapter());
  Hive.registerAdapter(ChoicesAdapter());
  Hive.registerAdapter(LogModelAdapter());
}
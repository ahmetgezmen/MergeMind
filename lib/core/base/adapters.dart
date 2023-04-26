import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:chatgptapp/feature/dalee/models/save_data_model.dart';
import 'package:chatgptapp/feature/models/app_settings_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void adapters(){
  Hive.registerAdapter(MessageAdapter());
  Hive.registerAdapter(ChoiceAdapter());
  Hive.registerAdapter(ChoicesAdapter());
  Hive.registerAdapter(LogModelAdapter());
  Hive.registerAdapter(RequestDataModelAdapter());
  Hive.registerAdapter(NetworkResponseAdapter());
  Hive.registerAdapter(UsageAdapter());
  Hive.registerAdapter(ResponseModelForDaleeAdapter());
  Hive.registerAdapter(B64ModelFromResponsForDaleeAdapter());
  Hive.registerAdapter(LogModelForDaleeAdapter());
  Hive.registerAdapter(SaveDAtaModelForDaleeAdapter());
  Hive.registerAdapter(RequestModelForDaleeCreateImageAdapter());
  Hive.registerAdapter(AppSettingsModelAdapter());
}
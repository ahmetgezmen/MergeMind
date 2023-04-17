import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/cache/base_cache_manager.dart';
import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ChatCacheManager extends ICacheManager<Choices>{

  @override
  Future<void> fetch() async {
    super.box =  await Hive.openBox<Choices>(BaseConstant.hiveBoxName);
    isInitializing = true;
  }



}
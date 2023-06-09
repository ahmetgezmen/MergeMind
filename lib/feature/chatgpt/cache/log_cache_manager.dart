import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/cache/base_cache_manager.dart';
import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LogCacheManager extends ICacheManager<LogModel>{

  @override
  Future<void> fetch() async {
    super.box =  await Hive.openBox<LogModel>(BaseConstant.logBoxName);
    isInitializing = true;
  }
}
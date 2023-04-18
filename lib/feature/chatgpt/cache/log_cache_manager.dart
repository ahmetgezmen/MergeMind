import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/cache/base_cache_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LogCacheManager extends ICacheManager{

  @override
  Future<void> fetch() async {
    super.box =  await Hive.openBox(BaseConstant.logBoxName);
    isInitializing = true;
  }

}
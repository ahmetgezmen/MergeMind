import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/cache/base_cache_manager.dart';
import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LogCacheManagerForDalee extends ICacheManager<LogModelForDalee>{
  @override
  Future<void> fetch() async {
    super.box =  await Hive.openBox<LogModelForDalee>(BaseConstant.logBoxNameForDale);
    isInitializing = true;
  }

}
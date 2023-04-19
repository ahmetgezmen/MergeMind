import 'package:chatgptapp/feature/dalee/cache/log_cache_model.dart';
import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:flutter/cupertino.dart';

class LogViewModelForDalee extends ChangeNotifier{

  final LogCacheManagerForDalee _logCacheManagerForDalee = LogCacheManagerForDalee();
  late Map<dynamic, LogModelForDalee> _logList;

  recheckLogList() async {
    _logList = _logCacheManagerForDalee.getAll();
    notifyListeners();
  }

  fetch() async {
    await _logCacheManagerForDalee.fetch();
    _logList = _logCacheManagerForDalee.getAll();
    notifyListeners();
  }

  put(String key, LogModelForDalee logModelForDalee) async {
    await _logCacheManagerForDalee.put(key, logModelForDalee);
    _logList = _logCacheManagerForDalee.getAll();
    notifyListeners();
  }

  LogCacheManagerForDalee get logCacheManager => _logCacheManagerForDalee;
  Map<dynamic, LogModelForDalee> get logList => _logList;


}
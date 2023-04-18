import 'package:chatgptapp/feature/chatgpt/cache/log_cache_manager.dart';
import 'package:chatgptapp/feature/chatgpt/models/log_model.dart';
import 'package:flutter/cupertino.dart';

class LogViewModel extends ChangeNotifier{
  final LogCacheManager _logCacheManager = LogCacheManager();
  late Map<dynamic, LogModel> _logList;

  recheckLogList() async {
    _logList = _logCacheManager.getAll();
    notifyListeners();
  }

  fetch() async {
    await _logCacheManager.fetch();
    _logList = _logCacheManager.getAll();
    notifyListeners();
  }

  put(String key, LogModel logModel) async {
    _logCacheManager.put(key, logModel);
    _logList = _logCacheManager.getAll();
    notifyListeners();
  }

  LogCacheManager get logCacheManager => _logCacheManager;
  Map<dynamic, LogModel> get logList => _logList;
}
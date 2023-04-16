import 'package:hive_flutter/hive_flutter.dart';

abstract class ICacheManager<T> {
  late Box<T> _box;
  final Map<String, T> mapOfItem = {};
  bool isInitializing = false;

  Future<void> fetch();

  set box(Box<T> value) {
    _box = value;
  }

  getVal(String val) => _box.get(val);

  getAt(int i) => _box.getAt(i);

  Map<dynamic, T> getAll() => _box.toMap();

  put(String key, T value) async {
    await _box.put(key, value);
  }

  putAt(int i, T value) async {
    await _box.putAt(i, value);
  }

  putAll(Map<String, T> map) async {
    await _box.putAll(map);
  }

  deleteAt(int i) async {
    await _box.deleteAt(i);
  }

  deleteElement(String key) async {
    await _box.delete(key);
  }

  deleteAll() async {
    await _box.deleteAll(_box.keys);
  }

  contains(String key)=> _box.containsKey(key);

  close() async {
    await _box.close();
  }
}
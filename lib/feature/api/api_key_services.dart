import 'package:chatgptapp/constant%20/constant.dart';
import 'package:hive_flutter/adapters.dart';

class ApiKeyServices{

  static Future<String?> getApiKey() async {
    final Box apiBox = await Hive.openBox(BaseConstant.apiHiveBoxName);
    final String? apiName = apiBox.get(BaseConstant.apiHiveBoxName);
    await apiBox.close();
    return apiName;
  }

  static Future<bool> setApiKey(String apiKey) async {
    final Box apiBox = await Hive.openBox(BaseConstant.apiHiveBoxName);
    await apiBox.put(BaseConstant.apiHiveBoxName, apiKey);
    await apiBox.close();
    return true;
  }
  const ApiKeyServices._();
}
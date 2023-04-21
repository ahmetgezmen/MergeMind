import 'dart:io';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/services/network_manager.dart';
import 'package:dio/src/response.dart';
import 'package:hive_flutter/adapters.dart';

class ApiKeyServices {

  static Future<bool> remove() async {
    final Box apiBox = await Hive.openBox(BaseConstant.apiHiveBoxName);
    await apiBox.delete(BaseConstant.apiHiveBoxName);
    await apiBox.close();
    return true;
  }

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

  static Future<bool> testOpenAIKey(String apiKey) async {
    final manager = NetworkManager(apiKey);
    const model = RequestDataModel(
      model: ApiConstant.aIModel,
      messages: [
        Message(
          content: BaseConstant.testContent,
          role: BaseConstant.user,
        ),
      ],
    );
    final  Response response = await manager.post(requestDataModel: model);
    if(response.statusCode == HttpStatus.ok){
      return true;
    }else{
      return false;
    }
  }

  const ApiKeyServices._();
}

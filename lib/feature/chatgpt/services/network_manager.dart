import 'package:chatgptapp/feature/chatgpt/models/request_data_model.dart';
import 'package:chatgptapp/feature/chatgpt/models/response_model.dart';
import 'package:chatgptapp/feature/chatgpt/services/i_network_manager.dart';
import 'package:dio/dio.dart';

class NetworkManager extends INetworkManager {
  NetworkManager(this.apiKey) {
    dioInit(apiKey);
  }
  String apiKey;

  @override
  Future<NetworkResponse> get(
      {required RequestDataModel requestDataModel}) async {
    final response =
        await dio.get('', data: requestDataModel.toJson());
    return NetworkResponse.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<Response> post(
      {required RequestDataModel requestDataModel}) async {
    final Response response =
        await dio.post('', data: requestDataModel.toJson());
    return response;
  }
}

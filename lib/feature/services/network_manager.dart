import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/models/services_models/request_data_model.dart';
import 'package:chatgptapp/feature/models/services_models/response_model.dart';
import 'package:chatgptapp/feature/services/i_network_manager.dart';
import 'package:dio/src/response.dart';

class NetworkManager extends INetworkManager {
  String apiKey;
  NetworkManager(this.apiKey) {
    dioInit(apiKey);
  }

  @override
  Future<NetworkResponse> get(
      {required RequestDataModel requestDataModel}) async {
    final Response response =
        await dio.get(ApiConstant.subUrl, data: requestDataModel.toJson());
    return NetworkResponse.fromJson(response.data);
  }

  @override
  Future<NetworkResponse> post(
      {required RequestDataModel requestDataModel}) async {
    final Response response =
        await dio.post(ApiConstant.subUrl, data: requestDataModel.toJson());
    return NetworkResponse.fromJson(response.data);
  }
}

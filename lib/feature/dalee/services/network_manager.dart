
import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/services/i_network_manager.dart';
import 'package:dio/dio.dart';

class NetworkManagerForDalee extends INetworkManagerForDalee {
  NetworkManagerForDalee(this.apiKey) {
    dioInit(apiKey);
  }
  String apiKey;


  @override
  Future<Response> postCreateImage({required RequestModelForDaleeCreateImage data}) async {
    final Response response =
        await dio.post('', data: data.toJson());
    return response;
  }


}

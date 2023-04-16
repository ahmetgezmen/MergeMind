import 'dart:io';

import 'package:chatgptapp/feature/models/services_models/request_data_model.dart';
import 'package:chatgptapp/feature/models/services_models/response_model.dart';
import 'package:chatgptapp/feature/services/dio.dart';

abstract class INetworkManager {
  final DIO _dio = DIO();
  DIO get dio => _dio;

  dioInit(String apiKey){
    _dio.dio.options.headers = {
      HttpHeaders.authorizationHeader: 'Bearer $apiKey'
    };
  }


  Future<NetworkResponse> get({required RequestDataModel requestDataModel});

  Future<NetworkResponse> post({required RequestDataModel requestDataModel});

}
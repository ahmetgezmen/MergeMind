import 'dart:io';

import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/services/dio.dart';
import 'package:dio/dio.dart';

abstract class INetworkManager {
  final DIO _dio = DIO();
  DIO get dio => _dio;

  dioInit(String apiKey){
    _dio.dio.options.headers = {
      HttpHeaders.authorizationHeader: 'Bearer $apiKey'
    };
  }


  Future<NetworkResponse> get({required RequestDataModel requestDataModel});

  Future<Response> post({required RequestDataModel requestDataModel});

}
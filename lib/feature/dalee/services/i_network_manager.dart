import 'dart:io';

import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/services/dio.dart';

import 'package:dio/dio.dart';

abstract class INetworkManagerForDalee {
  final DIOForDalee _dio = DIOForDalee();
  DIOForDalee get dio => _dio;

  dioInit(String apiKey){
    _dio.dio.options.headers = {
      HttpHeaders.authorizationHeader: 'Bearer $apiKey'
    };
  }


  Future<Response> postCreateImage({required RequestModelForDaleeCreateImage data});

}
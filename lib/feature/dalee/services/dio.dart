import 'dart:io';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/utils/helper/durations.dart';
import 'package:dio/dio.dart';

class DIOForDalee {
  static final DIOForDalee _instance = DIOForDalee._internal();

  factory DIOForDalee() => _instance;

  late Dio dio;

  DIOForDalee._internal() {
    dio = Dio();

    dio.options.baseUrl = ApiConstant.baseUrlForDalee;

    dio.options.connectTimeout = Durations.networkTimeout.duration;

    dio.options.receiveTimeout = Durations.networkTimeout.duration;
    
    dio.options.headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    
  }

  Future<Response> get(
    String url, {
    Object? data,
  }) async {
    return await dio.get(
      url,
      data: data,
    );
  }

  Future<Response> post(
    String url, {
    Object? data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }
}

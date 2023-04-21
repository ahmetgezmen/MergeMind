import 'dart:io';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/utils/helper/durations.dart';
import 'package:dio/dio.dart';

class DIO {
  static final DIO _instance = DIO._internal();

  factory DIO() => _instance;

  late Dio dio;

  DIO._internal() {
    dio = Dio();

    dio.options.baseUrl = ApiConstant.baseUrl;

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
    late final Response response ;
    try {
       response = await dio.post(
        url,
        data: data,
      );
    } catch (e) {
      final int statusCode = int.parse(e.toString().split(" ").last.substring(0, 3));
      response = Response(
        requestOptions: RequestOptions(path: url),
        statusMessage: e.toString(),
        statusCode: statusCode,
      );
    }

    return response;
  }
}

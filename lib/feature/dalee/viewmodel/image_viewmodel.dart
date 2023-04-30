import 'dart:typed_data';

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:chatgptapp/feature/dalee/models/save_data_model.dart';
import 'package:chatgptapp/feature/dalee/services/network_manager.dart';
import 'package:chatgptapp/feature/dalee/viewmodel/log_viewmodel.dart';
import 'package:chatgptapp/feature/models/either_model.dart';
import 'package:chatgptapp/utils/helper/base64_adapter.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageViewModel extends StateNotifier<bool> {
  ImageViewModel(String apiKey, LogViewModelForDalee logViewModelForDale ) : super(false) {
    networkManager = NetworkManagerForDalee(apiKey);
    logViewModelForDalee= logViewModelForDale;
  }

  late LogViewModelForDalee logViewModelForDalee;
  late NetworkManagerForDalee networkManager;

  Future<EitherModel<List<Uint8List>,String>> sendRequest({
    required String prompt,
    int n = ApiConstant.defaultPicturesNumber,
    int height = ApiConstant.defaultHeight,
    int width = ApiConstant.defaultWidth,
  }) async {
    state = true;
    final RequestModelForDaleeCreateImage requestModelForDaleeCreateImage =
        RequestModelForDaleeCreateImage(
            prompt: prompt,
            n: n,
            size: '${width}x$height',
            response_format: ApiConstant.responseFormat);
    final Response response = await networkManager.postCreateImage(
        data: requestModelForDaleeCreateImage);
    if ( response.statusCode != 200) {
      state = false;
      return EitherModel(
        right: response.statusMessage,
        left: null,
      );
    }  else {
      final ResponseModelForDalee responseModel =
      ResponseModelForDalee.fromJson(response.data);

      final SaveDAtaModelForDalee saveDataModel = SaveDAtaModelForDalee(
        requestModelForDaleeCreateImage: requestModelForDaleeCreateImage,
        responseModelForDalee: responseModel,
      );



      final LogModelForDalee logModel = LogModelForDalee(
        requestModelForDaleeCreateImage: requestModelForDaleeCreateImage,
        responseModelForDalee: responseModel,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );

      final dateTime = DateTime.now().millisecondsSinceEpoch.toString();
      logViewModelForDalee.put(dateTime, logModel);

      // todo cache logModel
      List<Uint8List> images = [];
      for (B64ModelFromResponsForDalee element in responseModel.data) {
        images.add(element.toUint8List);
      }
      state = false;
      return EitherModel(
        left: images,
        right: null,
      );
    }


  }
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:flutter/material.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';

class LogInfoForDalee extends StatelessWidget {
  static go(context, LogModelForDalee logModelForDalee) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) =>
            LogInfoForDalee(logModelForDalee: logModelForDalee),
      ),
      (route) => false,
    );
  }

  const LogInfoForDalee({Key? key, required this.logModelForDalee})
      : super(key: key);
  final LogModelForDalee logModelForDalee;
  @override
  Widget build(BuildContext context) {
    final List<B64ModelFromResponsForDalee> base64PicList =
        logModelForDalee.responseModelForDalee.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Info'),
      ),
      body: ListView(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Image.memory(base64PicList[index].toUint8List).wHalf(context);
            },
            itemCount: base64PicList.length,
          ).hHalf(context),
        ],
      ),
    );
  }
}

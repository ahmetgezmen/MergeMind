import 'dart:convert';
import 'dart:typed_data';

import 'package:chatgptapp/feature/dalee/models/log_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:flutter/material.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';

class LogInfoForDalee extends StatefulWidget {
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
  State<LogInfoForDalee> createState() => _LogInfoForDaleeState();
}

class _LogInfoForDaleeState extends State<LogInfoForDalee>
    with TickerProviderStateMixin {
  int initialPage = 0;
  PageController _pageController = PageController();

  bool isGaleryMode = false;

  @override
  Widget build(BuildContext context) {
    final List<B64ModelFromResponsForDalee> base64PicList =
        widget.logModelForDalee.responseModelForDalee.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Info'),
        actions: [
          Switch(
            value: isGaleryMode,
            onChanged: (value) {
              setState(() {
                isGaleryMode = value;
              });
            },
          ),
        ],
      ),
      body: isGaleryMode ?
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Image.memory(base64PicList[index].toUint8List)
                    .wHalf(context);
              },
              itemCount: base64PicList.length,
            )
          : ListView(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  initialPage = index;
                });
              },
              controller: _pageController,
              itemBuilder: (context, index) {
                return Image.memory(base64PicList[index].toUint8List)
                    .wHalf(context);
              },
              itemCount: base64PicList.length,
            ),
          ),
          Center(
            child: TabPageSelector(
              controller: TabController(
                length: base64PicList.length,
                vsync: this,
                initialIndex: initialPage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



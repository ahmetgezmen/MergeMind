import 'package:chatgptapp/feature/chatgpt/widgets/loading_widget.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

AppBar appBar({required String title,required bool isLoading}) {
  return AppBar(
    actions: [
      if(isLoading)
      const LoadingWidget().p8R,
    ],
    title: Text(title),
    centerTitle: true,
  );
}

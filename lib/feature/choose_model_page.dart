import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/pages/home_page.dart';
import 'package:chatgptapp/feature/dalee/pages/d_home_page.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class ChooseModelPage extends StatelessWidget {
  const ChooseModelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(BaseConstant.chooseModel),
        ),
        body:  SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text('Choose Model'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  HomePage.go(context);
                },
                child: const Text('ChatGPT'),
              ).p16H.wInf,
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  DHomePage.go(context);
                },
                child: const Text('Dalee'),
              ).p16H.wInf,
            ],
          ),
        ),
      ),
    );
  }
}

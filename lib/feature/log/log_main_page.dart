import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/choose_model_page.dart';
import 'package:chatgptapp/feature/log/chatgpt_log_page.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class LogMainPage extends StatelessWidget {
  static go(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LogMainPage(),
      ),
    );
  }

  const LogMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              ChooseModelPage.go(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(LogConstant.logTitle),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ChatGPTLogPage.go(context);
              },
              child: const Text(LogConstant.chatgptlogs),
            ).wInf.p32H
          ],
        ).wInf,
      ),
    );
  }
}

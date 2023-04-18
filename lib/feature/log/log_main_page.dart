import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/log/chatgpt_log_page.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class LogMainPage extends StatelessWidget {
  static go(context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const LogMainPage(),
      ),
      (route) => false,
    );
  }

  const LogMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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

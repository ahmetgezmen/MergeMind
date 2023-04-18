import 'package:chatgptapp/constant%20/constant.dart';
import 'package:flutter/material.dart';

class ChatGPTLogPage extends StatelessWidget {
  static go(context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const ChatGPTLogPage(),
      ),
      (route) => false,
    );
  }

  const ChatGPTLogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(LogConstant.chatgptlogs),
        ),

      ),
    );
  }
}

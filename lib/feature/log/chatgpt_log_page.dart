import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/log_model.dart';
import 'package:chatgptapp/feature/chatgpt/provider/log_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatGPTLogPage extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final loggProvider = ref.watch(logProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(LogConstant.chatgptlogs),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            final LogModel logModel =loggProvider.logList.values.toList()[index];
            return ListTile(
              leading: Text(logModel.statusCode.toString()),
              title: Text(logModel.requestData.messages.first.content),
              subtitle: Text(logModel.statusMessage.toString()),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: loggProvider.logList.length,
        ),
      ),
    );
  }
}

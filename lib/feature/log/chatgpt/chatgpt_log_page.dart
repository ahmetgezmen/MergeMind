import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/log_model.dart';
import 'package:chatgptapp/feature/chatgpt/provider/log_provider.dart';
import 'package:chatgptapp/feature/log/chatgpt/log_info_page.dart';
import 'package:chatgptapp/feature/log/log_main_page.dart';
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
          leading: IconButton(
            onPressed: () {
              LogMainPage.go(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(LogConstant.chatgptlogs),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            final LogModel logModel =loggProvider.logList.values.toList()[index];
            final String time = loggProvider.logList.keys.toList()[index];
            return ListTile(
              onTap: () {
                LogInfoPage.go(context, logModel);
              },
              leading: Text(logModel.statusCode.toString()),
              title: Text(logModel.requestData.messages.last.content),
              subtitle: Text(logModel.statusMessage.toString()),
              trailing: Text(DateTime.fromMillisecondsSinceEpoch(int.parse(time)).toString()),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: loggProvider.logList.length,
        ),
      ),
    );
  }
}

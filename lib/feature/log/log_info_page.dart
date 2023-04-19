import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/choice_model.dart';
import 'package:chatgptapp/feature/chatgpt/models/log_model.dart';
import 'package:chatgptapp/feature/chatgpt/models/message_model.dart';
import 'package:chatgptapp/feature/log/line_widget.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class LogInfoPage extends StatelessWidget {
  static go(context, LogModel log) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LogInfoPage(log: log),
      ),
    );
  }

  const LogInfoPage({Key? key, required this.log}) : super(key: key);
  final LogModel log;

  @override
  Widget build(BuildContext context) {
    final List<Message> rMessages = log.requestData.messages;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(log.requestData.messages.first.content),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(LogConstant.statusCode),
            subtitle: Text(log.statusCode.toString()),
          ),
          ListTile(
            title: const Text(LogConstant.statusMessage),
            subtitle: Text(log.statusMessage.toString()),
          ),
          ListTile(
            title: const Text(LogConstant.requestMessages),
            subtitle: Column(
              children: [
                for (var i = 0; i < rMessages.length; i++)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text("${rMessages[i].role}: "),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(rMessages[i].content),
                      ),
                    ],
                  ).wInf,
              ],
            ),
          ),
          ListTile(
            title: const Text(LogConstant.responseID),
            subtitle: Text(log.networkResponse?.id.toString() ?? ''),
          ),
          ListTile(
            title: const Text(LogConstant.responseCreated),
            subtitle: Text(log.networkResponse?.created.toString() ?? ''),
          ),
          ListTile(
            title: const Text(LogConstant.responseObject),
            subtitle: Text(log.networkResponse?.object.toString() ?? ''),
          ),
          ListTile(
            title: const Text(LogConstant.responseChoices),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (Choice element in log.networkResponse?.choices ?? [])
                  Column(
                    children: [
                      LineWidget(
                          text: LogConstant.responseChoiceIndex,
                          value: element.index.toString()),
                      LineWidget(
                          text: LogConstant.responseChoiceFinishReason,
                          value: element.finish_reason.toString()),
                    ],
                  )
              ],
            ),
          ),
          ListTile(
            title: const Text(LogConstant.responseChoiceMessage),
            subtitle: LineWidget(
              is2to3: true,
              text:
                  log.networkResponse?.choices.first.message.role.toString() ??
                      '',
              value:
                  log.networkResponse?.choices.first.message.content.toString() ?? '',
            ),
          ),
          ListTile(
            title: const Text(LogConstant.responseUsage),
            subtitle: Column(
              children: [
                LineWidget(
                  text: "${LogConstant.responseUsagePromptTokens}: ",
                  value:
                      log.networkResponse?.usage.prompt_tokens.toString() ?? '',
                ),
                LineWidget(
                  text: "${LogConstant.responseUsageCompletionTokens}: ",
                  value:
                      log.networkResponse?.usage.completion_tokens.toString() ??
                          '',
                ),
                LineWidget(
                    text: LogConstant.responseUsageTotalTokens,
                    value: log.networkResponse?.usage.total_tokens.toString() ??
                        '')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

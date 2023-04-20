import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/dalee/provider/log_provider.dart';
import 'package:chatgptapp/feature/log/dalee/log_info_for_dalee_page.dart';
import 'package:chatgptapp/feature/log/log_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DaleeLogPage extends ConsumerWidget {
  const DaleeLogPage({super.key});

  static void go(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DaleeLogPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logProviderForDale = ref.watch(logModelForDAleeProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            LogMainPage.go(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(LogConstant.logTitle),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final logModel = logProviderForDale.logList.values.toList()[index];
          final String time = logProviderForDale.logList.keys.toList()[index];
          return ListTile(
            onTap: () {
              LogInfoForDalee.go(context, logModel);

            },
            title: Text(logModel.requestModelForDaleeCreateImage.prompt),
            leading: Text(logModel.statusCode.toString() ),
            subtitle: Text(logModel.statusMessage.toString()),
            trailing: Text(DateTime.fromMillisecondsSinceEpoch(int.parse(time)).toString()),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: logProviderForDale.logList.length,
      ),
    );
  }
}

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/api/api_key_services.dart';
import 'package:chatgptapp/feature/chatgpt/pages/home_page.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/dalee/pages/d_home_page.dart';
import 'package:chatgptapp/feature/log/log_main_page.dart';
import 'package:chatgptapp/feature/provider/app_settings_providers.dart';
import 'package:chatgptapp/feature/widgets/dropdown_button_widget.dart';
import 'package:chatgptapp/middleware/splash_screen.dart';
import 'package:chatgptapp/utils/extension/strings.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseModelPage extends ConsumerWidget {
  static go(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ChooseModelPage(),
      ),
    );
  }

  const ChooseModelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(BaseConstant.chooseModel),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(BaseConstant.settings),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(BaseConstant.themeMode),
                                DropdownButtonWidget<String>(
                                  value: ref
                                      .watch(appSettingChangeNotifierProvider)
                                      .appSettingsModel
                                      .themeMode
                                      .toString()
                                      .split('.')
                                      .last
                                      .capitalize,
                                  items: BaseConstant.themeModeList.map((e) {
                                    return DropdownMenuItem<String>(
                                      value: e,
                                      child: Text(e),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    if(value == null) return;
                                    ref
                                        .read(appSettingChangeNotifierProvider)
                                        .changeThemeMode(value);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.settings)),
            IconButton(
              onPressed: () async {
                showDialog<void>(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      title: const Text(BaseConstant.removeKey),
                      content: const Text(BaseConstant.removeKeyBody),
                      actions: <Widget>[
                        TextButton(
                          child: const Text(BaseConstant.no),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            await ApiKeyServices.remove();
                            if (context.mounted) {
                              SplashScreen.go(context);
                            }
                          },
                          child: const Text(BaseConstant.yes),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.person_remove),
            ),
            IconButton(
                onPressed: () {
                  LogMainPage.go(context);
                },
                icon: const Icon(Icons.insert_chart))
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(BaseConstant.chooseModel),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(chatProvider)
                      .changeOpeningChat(HomePageConstant.title);
                  HomePage.go(context);
                },
                child: const Text(BaseConstant.chatgpt),
              ).p16H.wInf,
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  DHomePage.go(context);
                },
                child: const Text(BaseConstant.dalee),
              ).p16H.wInf,
            ],
          ),
        ),
      ),
    );
  }
}

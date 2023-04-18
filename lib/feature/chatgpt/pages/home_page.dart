import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/pages/chat_page.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/app_bar.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/custom_drawer.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  static void go(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
      (route) => false,
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: appBar(
          title: HomePageConstant.title,
          isLoading: isLoading,
        ),
        body: const Center(
          child: Text(HomePageConstant.askAnything),
        ),
        bottomSheet: !isLoading ?CustomTextFormField(
          onPressed: (value) async {
            setState(() {
              isLoading = true;
            });
            final result =
                await ref.read(chatProvider).sendNewRequestForNewChat(
                      value,
                    );
            setState(() {
              isLoading = false;
            });
            if (result != false) {
              if (context.mounted) {
                ChatPage.go(context, result.toString());
              }
            }
          },
          formKey: GlobalKey<FormState>(),
          controller: TextEditingController(),
        ) : null,
      ),
    );
  }
}

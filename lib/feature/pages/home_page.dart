import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/pages/chat_page.dart';
import 'package:chatgptapp/feature/provider/chat_provider.dart';
import 'package:chatgptapp/feature/widgets/app_bar.dart';
import 'package:chatgptapp/feature/widgets/custom_drawer.dart';
import 'package:chatgptapp/feature/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';




class HomePage extends ConsumerWidget {
  static void go(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: appBar(title: HomePageConstant.title),
        body:  const Center(
          child: Text(HomePageConstant.askAnything),
        ),
        bottomSheet: CustomTextFormField(
          onPressed: (value) async {
            final result = await ref.read(chatProvider).sendNewRequest(
                  value,
                );

            if (result != false) {
              if(context.mounted){
                ChatPage.go(context, result.toString());
              }
            }
          },
          formKey: GlobalKey<FormState>(),
          controller: TextEditingController(),
        ),
      ),
    );
  }
}

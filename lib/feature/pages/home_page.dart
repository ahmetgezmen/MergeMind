import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/pages/chat_page.dart';
import 'package:chatgptapp/feature/widgets/app_bar.dart';
import 'package:chatgptapp/feature/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static go(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:  Drawer(
          child: Center(
            child: ElevatedButton(onPressed: () {
              ChatPage.go(context, "session");
            }, child: Text("go")),
          ),
        ),
        appBar: appBar(title: HomePageConstant.title),
        body: const Center(
          child: Text(HomePageConstant.askAnything),
        ),
        bottomSheet: CustomTextFormField(),
      ),
    );
  }
}

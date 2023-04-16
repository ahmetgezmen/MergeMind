import 'package:chatgptapp/feature/widgets/app_bar.dart';
import 'package:chatgptapp/feature/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static go(BuildContext context, String title) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatPage(title: title,),
      ),
    );
  }
  const ChatPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(title: title),
        body: const Center(
          child: Text('Chat Page'),
        ),
      bottomSheet: CustomTextFormField(),
      ),
    );
  }
}

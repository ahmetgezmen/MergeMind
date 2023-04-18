import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/app_bar.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/custom_card_widget.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/custom_drawer.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerStatefulWidget {
  static go(BuildContext context, String title) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => ChatPage(
          title: title,
        ),
      ),
      (route) => false,
    );
  }

  const ChatPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final Choices? choices = ref.watch(chatProvider).chats[widget.title];
    return choices != null ?  SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: appBar(title: widget.title, isLoading: isLoading),
        body: ListView.builder(
          reverse: true,
          itemCount: choices.list.length,
          itemBuilder: (context, index) {
            final int reverseIndex = choices.list.length - index - 1;
            bool isAssistant =
                choices.list[reverseIndex].message.role != BaseConstant.user;
            return CustomCardWidget(
              isAssistant: isAssistant,
              content: choices.list[reverseIndex].message.content,
            );
          },
        ),
        bottomNavigationBar: !isLoading ? CustomTextFormField(
          onPressed: (value) async {
            setState(() {
              isLoading = true;
            });
            await ref.read(chatProvider).sendRequestForCurrentChat(content: value, key: widget.title );
            setState(() {
              isLoading = false;
            });
          },
          formKey: GlobalKey<FormState>(),
          controller: TextEditingController(),
        ) : null,
      ),
    ):const SizedBox() ;
  }
}

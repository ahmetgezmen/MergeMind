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
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatPage(
          title: title,
        ),
      ),
    );
  }

  const ChatPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  bool isLoading = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.07;
    final Choices? choices = ref.watch(chatProvider).chats[widget.title];
    return choices != null
        ? SafeArea(
            child: Scaffold(
              drawer: const CustomDrawer(),
              appBar: appBar(title: widget.title, isLoading: isLoading),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: choices.list.length,
                      itemBuilder: (context, index) {
                        final int reverseIndex =
                            choices.list.length - index - 1;
                        bool isAssistant =
                            choices.list[reverseIndex].message.role !=
                                BaseConstant.user;
                        return CustomCardWidget(
                          isAssistant: isAssistant,
                          content: choices.list[reverseIndex].message.content,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: height,
                  ),
                ],
              ),
              bottomSheet: !isLoading
                  ? SizedBox(
                      height: height,
                      child: CustomTextFormField(
                        onPressed: (value) async {
                          setState(() {
                            isLoading = true;
                          });
                          final result = await ref
                              .read(chatProvider)
                              .sendRequestForCurrentChat(
                                  content: value, key: widget.title, ref: ref);
                          if (int.tryParse(result) == null) {
                            if(context.mounted){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(result),
                                ),
                              );
                            }
                          }
                          setState(() {
                            isLoading = false;
                          });
                        },
                        formKey: formKey,
                        controller: controller,
                      ),
                    )
                  : null,
            ),
          )
        : const SizedBox();
  }
}

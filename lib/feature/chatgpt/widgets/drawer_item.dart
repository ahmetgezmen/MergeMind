import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/pages/chat_page.dart';
import 'package:chatgptapp/feature/chatgpt/pages/home_page.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawerItem extends ConsumerWidget {
  const DrawerItem(
      {Key? key,
      required this.title,
      required this.elementKey,
      required this.isOpen})
      : super(key: key);

  final String title;
  final String elementKey;
  final bool isOpen;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: HomePageConstant.title != elementKey
          ? InkWell(
              child: const Icon(Icons.cancel),
              onTap: () async {
                ref
                    .read(chatProvider)
                    .changeOpeningChat(HomePageConstant.title);
                if (context.mounted) {
                  HomePage.go(context);
                }
                ref.read(chatProvider).removeChat(elementKey);
              },
            )
          : null,
      onTap: () {
        ref.read(chatProvider).changeOpeningChat(elementKey);
        if (elementKey != HomePageConstant.title) {
          ChatPage.go(context, elementKey);
        } else {
          HomePage.go(context);
        }
      },
      selectedColor: Colors.black,
      selectedTileColor: Colors.blueGrey,
      selected: isOpen,
    );
  }
}

import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/drawer_item.dart';
import 'package:chatgptapp/feature/choose_model_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(chatProvider);
    final Map<dynamic, Choices> map = provider.chats;
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: map.length + 2,
        itemBuilder: (context, index) {
          if(index == 0 ){
            return DrawerHeader(

              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {
                        ChooseModelPage.go(context);
                      }, icon: const Icon(Icons.arrow_back)),
                      const Text(BaseConstant.drawerHeader),
                    ],
                  ),
                ],
              ),
            );
          }else if(index == 1 ){
            return DrawerItem(
              title: HomePageConstant.title,
              elementKey: HomePageConstant.title,
              isOpen: provider.openingChat == HomePageConstant.title,
            );
          }else{
            final elementKey = map.keys.elementAt(index - 2) as String;
            final element = map.values.elementAt(index - 2);
            return DrawerItem(
              title: element.list.elementAt(0).message.content,
              elementKey: elementKey,
              isOpen: provider.openingChat == elementKey,
            );
          }

        },
      ),
    );
  }
}

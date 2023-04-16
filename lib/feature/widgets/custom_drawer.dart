import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:chatgptapp/feature/provider/chat_provider.dart';
import 'package:chatgptapp/feature/widgets/drawer_item.dart';
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
        itemCount: map.length + 1,
        itemBuilder: (context, index) {
          if(index == 0 ){
            return const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text('Drawer Header'),
            );
          }else {
            final String elementKey = map.keys.elementAt(index - 1);
            final Choices element = map.values.elementAt(index - 1);
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

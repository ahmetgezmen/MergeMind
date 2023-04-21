import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class EnterApiKey extends StatelessWidget {
  const EnterApiKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(BaseConstant.enterApiKey),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(BaseConstant.enterApiKey),
          const Divider(),
          TextField(
            decoration: InputDecoration(
              hintText: BaseConstant.enterApiKey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

        ],
      ).p8H,
    );
  }
}

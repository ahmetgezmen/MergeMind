import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldForDalee extends StatelessWidget {
  const CustomTextFormFieldForDalee({Key? key, required this.onPressed, required this.controller}) : super(key: key);
  final Function(String) onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onPressed,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            onPressed.call(controller.text);
            },
          icon: const Icon(Icons.send),
        ),
        hintText: DaleeHomePageConstant.enterPrompt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    ).p8;
  }
}

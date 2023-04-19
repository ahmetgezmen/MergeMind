import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldForDalee extends StatelessWidget {
  const CustomTextFormFieldForDalee({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: DaleeHomePageConstant.enterPrompt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    ).p8;
  }
}

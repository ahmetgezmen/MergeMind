import 'package:chatgptapp/constant%20/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: HomePageConstant.ask,
        suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}

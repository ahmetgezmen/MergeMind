import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/dalee/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class DHomePage extends StatelessWidget {
  static void go(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const DHomePage(),
      ),
      (route) => false,
    );
  }
  const DHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(DaleeHomePageConstant.title),
      ),
      body: const Center(
        child: CustomTextFormFieldForDalee(),
      ),
    );
  }
}

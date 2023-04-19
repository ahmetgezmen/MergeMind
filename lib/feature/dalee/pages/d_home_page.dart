import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/dalee/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class DHomePage extends StatefulWidget {
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
  State<DHomePage> createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(DaleeHomePageConstant.title),
      ),
      body: Center(
        child: CustomTextFormFieldForDalee(
          onPressed: (value) {},
          controller: TextEditingController(),
        ),
      ),
    );
  }
}

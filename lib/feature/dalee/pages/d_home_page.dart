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
    return const Placeholder();
  }
}

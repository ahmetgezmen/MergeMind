import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  static withScaffold({Key? key}) => const Scaffold(
        body: LoadingWidget(),
      );
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

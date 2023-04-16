import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/middleware/splash_screen.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: BaseConstant.appTitle,
      home: SplashScreen(),
    );
  }
}

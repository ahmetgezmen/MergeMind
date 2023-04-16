import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/middleware/splash_screen.dart';
import 'package:chatgptapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: BaseConstant.appTitle,
      themeMode: AppTheme.themeMode,
      darkTheme: AppTheme.theme,
      home: const SplashScreen(),
    );
  }
}

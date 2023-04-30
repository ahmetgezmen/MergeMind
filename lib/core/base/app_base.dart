import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/provider/app_settings_providers.dart';
import 'package:chatgptapp/middleware/splash_screen.dart';
import 'package:chatgptapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  bool isInitialized = false;
  appInitializing()  async {
    await ref.read(appSettingChangeNotifierProvider).fetch();
    isInitialized = true;
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    appInitializing();
  }

  @override
  Widget build(BuildContext context) {
    return isInitialized ? MaterialApp(
      debugShowCheckedModeBanner: false,
      title: BaseConstant.appTitle,
      themeMode: ref.watch(appSettingChangeNotifierProvider).getThemeMode(),
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      home: const SplashScreen(),
    ):
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox()),
        ),
      );

  }
}

import 'package:chatgptapp/feature/api/api_key_page.dart';
import 'package:chatgptapp/feature/api/api_key_services.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/chatgpt/provider/log_provider.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/loading_widget.dart';
import 'package:chatgptapp/feature/choose_model_page.dart';
import 'package:chatgptapp/feature/dalee/provider/log_provider.dart';
import 'package:chatgptapp/feature/provider/api_key_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static go(context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      ),
    );
  }
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool isInitialized = false;
  bool isApiKey = false;
  appInitializing() async {
    // todo : app initializing
    await Future.delayed(Duration.zero);

    await ref.read(logModelForDAleeProvider).fetch();
    final apiKey = await ApiKeyServices.getApiKey();
    if (apiKey != null) {
      isApiKey = true;
      ref.read(apiKeyStateProvider.notifier).setApiKey(apiKey);
    }
    await ref.read(chatProvider).fetch();
    await ref.read(logProvider).fetch();

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

    return isInitialized
        ? isApiKey
            ? const ChooseModelPage()
            : const EnterApiKey()
        : LoadingWidget.withScaffold();
  }
}

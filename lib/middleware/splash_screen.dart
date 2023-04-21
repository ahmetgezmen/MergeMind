import 'package:chatgptapp/feature/api/api_key_page.dart';
import 'package:chatgptapp/feature/api/api_key_services.dart';
import 'package:chatgptapp/feature/chatgpt/provider/chat_provider.dart';
import 'package:chatgptapp/feature/chatgpt/provider/log_provider.dart';
import 'package:chatgptapp/feature/chatgpt/widgets/loading_widget.dart';
import 'package:chatgptapp/feature/choose_model_page.dart';
import 'package:chatgptapp/feature/dalee/provider/log_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool isInitialized = false;
  bool isApiKey = false;
  appInitializing() async {
    // todo : app initializing
    final apiKey = await ApiKeyServices.getApiKey();
    await Future.delayed(Duration.zero);
    await ref.read(chatProvider).fetch();
    await ref.read(logProvider).fetch();
    await ref.read(logModelForDAleeProvider).fetch();
    if (apiKey != null) {
      isApiKey = true;
    }

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

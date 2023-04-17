import 'package:chatgptapp/feature/pages/home_page.dart';
import 'package:chatgptapp/feature/provider/chat_provider.dart';
import 'package:chatgptapp/feature/widgets/loading_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool isInitialized = false;

  appInitializing() async {
    // todo : app initializing
    await ref.read(chatProvider).fetch();
    setState(() {
      isInitialized = true;
    });
  }

  @override
  void initState() {
    super.initState();
    appInitializing();
  }

  @override
  Widget build(BuildContext context) {
    return isInitialized ? const HomePage() : LoadingWidget.withScaffold();
  }
}

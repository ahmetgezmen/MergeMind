import 'package:chatgptapp/feature/pages/home_page.dart';
import 'package:chatgptapp/feature/widgets/loading_widget.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool isInitialized = false;

  appInitializing(){

    // todo : app initializing

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

import 'package:chatgptapp/core/base/app_base.dart';
import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> appInitializing() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: App()));
}
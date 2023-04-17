import 'package:chatgptapp/core/base/app_base.dart';
import 'package:chatgptapp/feature/models/services_models/choice_model.dart';
import 'package:chatgptapp/feature/models/services_models/choices_model.dart';
import 'package:chatgptapp/feature/models/services_models/message_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> appInitializing() async {
  WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);
  Hive.registerAdapter(MessageAdapter());
  Hive.registerAdapter(ChoiceAdapter());
  Hive.registerAdapter(ChoicesAdapter());
  runApp(const ProviderScope(child: App()));
}
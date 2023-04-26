import 'package:chatgptapp/core/base/adapters.dart';
import 'package:chatgptapp/core/base/app_base.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> appInitializing() async {
  WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);
  adapters();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

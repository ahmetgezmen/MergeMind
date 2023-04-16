import 'package:chatgptapp/core/base/app_base.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void appInitializing(){
  runApp(const ProviderScope(child: App()));
}
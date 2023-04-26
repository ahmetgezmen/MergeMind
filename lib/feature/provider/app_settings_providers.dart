import 'package:chatgptapp/feature/viewmodel/setting_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appSettingChangeNotifierProvider = ChangeNotifierProvider<SettingsChangeNotifier>((ref) {
  return SettingsChangeNotifier();
});

import 'package:chatgptapp/constant%20/base_constant.dart';
import 'package:chatgptapp/feature/cache/app_setting_cache_manager.dart';
import 'package:chatgptapp/feature/models/app_settings_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsChangeNotifier extends ChangeNotifier {
  final AppSettingCacheManager _appSettingCacheManager =
      AppSettingCacheManager();
  late AppSettingsModel _appSettingsModel;

  Future<bool> fetch() async {
    await appSettingCacheManager.fetch();
    _appSettingsModel = appSettingCacheManager.getAppSettings();
    return true;
  }

  AppSettingCacheManager get appSettingCacheManager => _appSettingCacheManager;

  AppSettingsModel get appSettingsModel => _appSettingsModel;

  Future<void> _changeMode(String themeMode) async {
    _appSettingsModel =
        AppSettingsModel.setThemeMode(themeMode, _appSettingsModel);
    await appSettingCacheManager.saveAppSettings(_appSettingsModel);
    notifyListeners();
  }

  ThemeMode getThemeMode() {
    if (_appSettingsModel.themeMode == BaseConstant.light) {
      return ThemeMode.light;
    } else if (_appSettingsModel.themeMode == BaseConstant.dark) {
      return ThemeMode.dark;
    } else if (_appSettingsModel.themeMode == BaseConstant.system) {
      return ThemeMode.system;
    }
    return ThemeMode.light;
  }

  void changeThemeMode(String value) {
    _changeMode(value);
  }
}

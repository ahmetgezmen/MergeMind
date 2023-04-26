import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/cache/base_cache_manager.dart';
import 'package:chatgptapp/feature/models/app_settings_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppSettingCacheManager extends ICacheManager<AppSettingsModel> {
  Future<void> saveAppSettings(AppSettingsModel appSettingsModel) async {
    final bool result = contains(BaseConstant.appSettingBoxName);
    if (result) {
      await deleteElement(BaseConstant.appSettingBoxName);
    }
    await put(BaseConstant.appSettingBoxName, appSettingsModel);
  }

  AppSettingsModel getAppSettings() {
    return getVal(BaseConstant.appSettingBoxName) ??
        const AppSettingsModel(themeMode: BaseConstant.light);
  }

  @override
  Future<void> fetch() async {
    super.box =
        await Hive.openBox<AppSettingsModel>(BaseConstant.appSettingBoxName);
    isInitializing = true;
  }
}

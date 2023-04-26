import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  @HiveType(typeId: 13)
  const factory AppSettingsModel({
    @HiveField(0) required final String themeMode,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  factory AppSettingsModel.setThemeMode(String themeModeEnum, AppSettingsModel model ) =>
      model.copyWith(themeMode: themeModeEnum);
}


import 'package:flutter/material.dart';

/// Represents a setting entity with a name, icon and an enum value.
///
/// This is an immutable class.
///
/// [T] is the type of the icon.
///
/// [settingEnum] is an enum value that represents the setting.
///
/// Example usage:
/// ```dart
/// final setting = SettingModel<String>(
///   name: 'Dark Mode',
///   icon: '🌙',
///   settingEnum: SettingEnum.darkMode,
/// );
/// ```
// FILEPATH: /home/viku/flutter_projects/chiggos_mobile/lib/features/master_setting/domain/entities/setting_entity.dart
@immutable
class SettingModel<T> {
  final Enum settingEnum;
  final String name;
  final T icon;
  const SettingModel({
    required this.name,
    required this.icon,
    required this.settingEnum,
  });
}

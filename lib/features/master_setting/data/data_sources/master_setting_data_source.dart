
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

/// Abstract class for the data source of master settings.
/// Provides methods to add, get and delete settings.
abstract class MasterSettingDataSource {
  /// Adds a new [SettingDataModel] to the data source.
  ///
  /// Returns a [Future] that completes with a [bool] value indicating whether the operation was successful or not.
  /// Throws an [Exception] if the operation fails.
  Future<bool> addSetting({required MasterSettingModel settingData});

  /// Retrieves a list of [SettingDataModel] objects from the data source based on the given [settingType].
  ///
  /// Throws a [StateError] if the [settingType] is null.
  Future<List<MasterSettingModel>> getSettings({required String settingType});

  /// Deletes a setting with the given [date].
  /// Returns a [Future] that completes with a [bool] indicating whether the operation was successful.
  /// Throws an error if the setting could not be deleted.
  Future<bool> deleteSetting({required String date});
}

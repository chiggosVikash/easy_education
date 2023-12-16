import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

/// This abstract class defines the contract for a repository that handles master settings.
/// It provides methods to add, get and delete setting data models.
///
abstract class MasterSettingRepo {
  /// Adds a new [settingData] to the repository.
  /// Returns true if the operation was successful, false otherwise.
  ///
  Future<bool> addSetting({required MasterSettingModel settingData});

  /// Retrieves a list of [SettingDataModel] objects of the specified [settingType].
  ///
  Future<List<MasterSettingModel>> getSettings({required String settingType});

  /// Deletes the [SettingDataModel] object with the specified [date].
  /// Returns true if the operation was successful, false otherwise.
  ///
  Future<bool> deleteSetting({required String date});
}

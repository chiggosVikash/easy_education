import 'package:easy_education/features/master_setting/data/data_sources/master_settings_firebase_data_source_impl.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/features/master_setting/domain/repos/master_setting_repository_impl.dart';
import '../repos/mater_setting_repository.dart';

/// This class represents the use case for managing master settings.
/// It provides methods to add, get and delete settings.
class MasterSettingUseCase {
  final MasterSettingRepo _masterSettingRepo =
      MasterSettingRepoImpl(MasterSettingFirebaseDataSourceImpl());
  MasterSettingUseCase();

  /// Adds a new setting to the master settings.
  /// Returns true if the setting was added successfully, false otherwise.
  Future<bool> addSetting({required MasterSettingModel settingData}) async {
    return await _masterSettingRepo.addSetting(settingData: settingData);
  }

  /// Gets all the settings of a given type from the master settings.
  /// Returns a list of [MasterSettingModel] objects.
  Future<List<MasterSettingModel>> getSettings(
      {required String settingType}) async {
    return await _masterSettingRepo.getSettings(settingType: settingType);

  }

  /// Deletes a setting from the master settings based on its date.
  /// Returns true if the setting was deleted successfully, false otherwise.
  Future<bool> deleteSetting({required String date}) async {
      return  await _masterSettingRepo.deleteSetting(date: date);
  }
}

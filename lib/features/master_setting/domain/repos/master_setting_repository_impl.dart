
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

import '../../data/data_sources/master_setting_data_source.dart';
import 'mater_setting_repository.dart';

/// Implementation of [MasterSettingRepo] interface.
/// Uses [_masterSettingDataSource] to interact with the data source.
///
class MasterSettingRepoImpl implements MasterSettingRepo {
  final MasterSettingDataSource _masterSettingDataSource;

  MasterSettingRepoImpl(this._masterSettingDataSource);

  /// Adds a [SettingDataModel] to the master setting data source.
  /// Returns a [Future] that completes with a [bool] indicating whether the operation was successful.
  /// Throws an error if the operation fails.
  @override
  Future<bool> addSetting({required MasterSettingModel settingData}) async {
    try {
      return
          await _masterSettingDataSource.addSetting(settingData: settingData);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of [SettingDataModel] for the given [settingType].
  ///
  /// Throws an exception if an error occurs while fetching the data.
  @override
  Future<List<MasterSettingModel>> getSettings(
      {required String settingType}) async {
    try {
      return
          await _masterSettingDataSource.getSettings(settingType: settingType);
    } catch (e) {
      rethrow;
    }
  }

  /// Deletes a setting with the given [date] from the master setting data source.
  /// Returns a [Future] that completes with a [bool] indicating whether the operation was successful.
  @override
  Future<bool> deleteSetting({required String date}) async {
    try {
      return await _masterSettingDataSource.deleteSetting(date: date);
    } catch (e) {
      rethrow;
    }
  }
}


import 'dart:async';

import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_cases/master_setting_use_case.dart';

final saveMasterSettingProvider = AsyncNotifierProvider<SaveMasterSettingP,bool>(()=>SaveMasterSettingP());

/// Riverpod provider for adding a master setting.
class SaveMasterSettingP extends AsyncNotifier<bool> {
  final MasterSettingUseCase _masterSettingUseCase = MasterSettingUseCase();

  @override
  FutureOr<bool> build() {
    return false;
  }

  /// Adds a new setting to the master settings.
  ///
  /// Throws an exception if the operation fails.
  Future<void> addSetting({required MasterSettingModel settingDataModel}) async {
    try {
      state = const AsyncLoading();

      final result =
          await _masterSettingUseCase.addSetting(settingData: settingDataModel);
      if (result == true) {
        state = const AsyncData(true);
        return;
      }
      throw Exception("Failed to add setting");
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}

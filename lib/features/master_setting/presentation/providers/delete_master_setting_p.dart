
import 'dart:async';

import 'package:easy_education/features/master_setting/presentation/providers/get_settings_provider_g.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_cases/master_setting_use_case.dart';

/// A Riverpod provider that handles deleting a master setting.
///
/// This provider extends `_$DeleteMasterSetting` and provides a method `deleteMasterSetting`
/// that deletes a master setting based on the provided date and setting type.
///
/// This provider also updates the state of `getSettingsPProvider` after deleting the setting.
final deleteMasterSettingProvider = AsyncNotifierProvider.autoDispose<DeleteMasterSetting,bool>(() => DeleteMasterSetting());
class DeleteMasterSetting extends AutoDisposeAsyncNotifier<bool> {
  final MasterSettingUseCase _masterSettingUseCase = MasterSettingUseCase();

  @override
  FutureOr<bool> build() {
    return false;
  }

  /// Deletes a master setting with the given [date] and [settingType].
  /// Returns a Future that completes with no return value.
  ///
  /// If the deletion is successful, the state is set to [AsyncValue.data] with a value of `true`.
  /// Otherwise, an exception is thrown with a message indicating the reason for failure.
  ///
  /// After the deletion, the [getSettingsPProvider] is refreshed with the updated [settingType].

  Future<void> deleteMasterSetting(
      {required String date, required String settingType}) async {
    state = const AsyncValue.loading();
    try {
      final result = await _masterSettingUseCase.deleteSetting(date: date);
      if (result == true) {
        state = const AsyncValue.data(true);
        await ref
            .watch(getSettingsProvider.notifier)
            .refreshSettings(settingType);
        return;
      }
      throw Exception("Failed to delete setting due to $result");
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

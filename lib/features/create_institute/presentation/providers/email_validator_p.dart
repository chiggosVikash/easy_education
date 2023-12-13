

import 'package:easy_education/features/create_institute/domain/usecases/create_institute_usecase.dart';
import 'package:easy_education/features/create_institute/presentation/providers/otp_validator_p.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final emailValidatorProvider = AsyncNotifierProvider.autoDispose<EmailValidatorP,bool>(()=>EmailValidatorP());

class EmailValidatorP extends AutoDisposeAsyncNotifier<bool>{

  final _createInstituteUseCase = CreateInstituteUseCase();


  @override
  Future<bool> build() {
    return Future.value(false);
  }

  Future<void> sendOtp({required String userEmail})async {
    state = const AsyncValue.loading();
    try {
      state = AsyncData(
          await _createInstituteUseCase.sendOtp(userEmail: userEmail));
    } catch (e, st) {
      state = AsyncError(e, st);
      if (kDebugMode) {
        rethrow;
      }
    }
  }

  bool validateOtp({required String otp}){
    return ref.read(otpValidatorProvider.notifier).validateOtp(otp: otp,
        createInstituteUseCase: _createInstituteUseCase
    );
  }





}
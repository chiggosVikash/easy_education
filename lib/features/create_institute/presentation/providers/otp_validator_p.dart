

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/create_institute_usecase.dart';

final otpValidatorProvider = AutoDisposeNotifierProvider<OtpValidatorP,bool?>(()=>OtpValidatorP());

class OtpValidatorP extends AutoDisposeNotifier<bool?>{
  @override
  bool? build() {
   return null;
  }

  bool validateOtp({required CreateInstituteUseCase createInstituteUseCase,required String otp}){
    try{
      state = createInstituteUseCase.verifyOtp(otp: otp);
    }catch(e){
      state = false;
      if(kDebugMode){
        rethrow;
      }
    }
    return state ?? false;
  }


}


import 'dart:async';
import 'package:easy_education/features/login/domain/use_cases/login_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final instituteExistenceProvider = AsyncNotifierProvider.autoDispose<InstituteExistenceP,bool>(() => InstituteExistenceP());

class InstituteExistenceP extends AutoDisposeAsyncNotifier<bool>{
  final LoginUseCase _loginUseCase = LoginUseCase();
  @override
  FutureOr<bool> build() {
    return false;
  }

  Future<bool> checkInstituteExistence(String email) async{
    state = const AsyncLoading();
    try{
      state = AsyncData(await _loginUseCase.isInstituteExist(email));
    }catch(e,st){
      state = AsyncError(e,st);
      if(kDebugMode){
        rethrow;
      }


    }
    return state.value!;
  }



}
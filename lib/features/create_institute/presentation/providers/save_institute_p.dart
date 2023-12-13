

import 'dart:async';

import 'package:easy_education/features/create_institute/data/models/institute_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecases/create_institute_usecase.dart';

final saveInstituteProvider = AsyncNotifierProvider.autoDispose<SaveInstituteP,bool>(()=>SaveInstituteP());

class SaveInstituteP extends AutoDisposeAsyncNotifier<bool>{
  final _createInstituteUseCase = CreateInstituteUseCase();
  @override
  FutureOr<bool> build() {
    return false;
  }

  Future<void> saveInstitute({required InstituteModel institute}) async{
    state = const AsyncLoading();
   try{
     if(institute.imageFile != null){
       final imageUrl = await _createInstituteUseCase.uploadImage(filePath: institute.email, image: institute.imageFile!);
       institute = institute.copyWith(logoUrl: imageUrl);
     }
     final status = await _createInstituteUseCase.createInstitute(instituteModel: institute);
     await _createInstituteUseCase.saveInstituteEmailAndNameToLocalStorage(email: institute.email, name: institute.name);
     if(status) {
       state = const AsyncData(true);
     }else{
       throw Exception("Failed to create institute");
     }


   }catch(e,st){
     state = AsyncError(e, st);
     if(kDebugMode){
       print(e);
       rethrow;
     }
   }
  }

}
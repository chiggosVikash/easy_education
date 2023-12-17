import 'package:easy_education/features/enquiry/data/data_sources/enquiry_firebase_data_source_impl.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_cases/enquiry_use_case.dart';

final saveEnquiryProvider = AsyncNotifierProvider<SaveEnquiryP,bool>(() => SaveEnquiryP());

class SaveEnquiryP extends AsyncNotifier<bool>{
  final _enquiryUseCase = EnquiryUseCase(
    EnquiryRepoImpl(
      EnquiryFirebaseDataSourceImpl(),
    )
  );
  @override
  Future<bool> build(){
    return Future.value(false);
  }

  Future<void> saveEnquiry(EnquiryModel enquiryModel)async{
    state = const AsyncLoading();
    try{
      final status = await _enquiryUseCase.addEnquiry(enquiryModel);
      if(status){
        state = const AsyncData(true);
        return;
      }
      throw Exception("Error: Enquiry not saved");

    }catch(e,st){
      state = AsyncError(e,st);
      if(kDebugMode){
        rethrow;
      }
    }
  }
}
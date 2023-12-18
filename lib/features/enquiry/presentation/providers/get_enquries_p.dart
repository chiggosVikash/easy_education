
import 'dart:async';

import 'package:easy_education/features/enquiry/data/data_sources/enquiry_firebase_data_source_impl.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo_impl.dart';
import 'package:easy_education/features/enquiry/domain/use_cases/enquiry_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getEnquiryProvider = AsyncNotifierProvider.autoDispose<GetEnquiryP,List<EnquiryModel>>(()=>GetEnquiryP());

class GetEnquiryP extends AutoDisposeAsyncNotifier<List<EnquiryModel>>{
  final _enquiryUseCase = EnquiryUseCase(EnquiryRepoImpl(
    EnquiryFirebaseDataSourceImpl()
  ));
  @override
  FutureOr<List<EnquiryModel>> build() {
    return getEnquiries();
  }

  Future<List<EnquiryModel>> getEnquiries({bool isRefresh = false})async{
    if(isRefresh){
      state = const AsyncLoading();
    }
    try{
      return await _enquiryUseCase.getAllEnquiries();
    }catch(e,st){
      state = AsyncError(e, st);
      if(kDebugMode){
        rethrow;
      }
      return [];
    }
  }


}

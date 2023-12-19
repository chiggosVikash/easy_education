

import 'dart:async';

import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/enquiry_firebase_data_source_impl.dart';
import '../../data/models/enquiry_vs_admission_chat_data_model.dart';
import '../../domain/repos/enquiry_repo_impl.dart';
import '../../domain/use_cases/enquiry_use_case.dart';

final getLast30DaysEnquiriesProvider = AsyncNotifierProvider.autoDispose<GetLast30DaysEnquiriesP,List<EnquiryModel>>(()=> GetLast30DaysEnquiriesP());

class GetLast30DaysEnquiriesP extends AutoDisposeAsyncNotifier<List<EnquiryModel>>{
  final _enquiryUseCase = EnquiryUseCase(EnquiryRepoImpl(
    EnquiryFirebaseDataSourceImpl()
  ));

  @override
  FutureOr<List<EnquiryModel>> build() {
    return getLast30DaysEnquiries();
  }

  Future<List<EnquiryModel>> getLast30DaysEnquiries()async{
    try{
      state = AsyncData( await _enquiryUseCase.getLast30DaysEnquiries());
    }catch(e,st){
      state = AsyncError(e, st);
      if(kDebugMode){
        rethrow;
      }
    }
    return state.value ?? [];
  }

  (Map<String,EnquiryVsAdmissionChartDataModel>,Map<String,EnquiryVsAdmissionChartDataModel>) getEnquiryVsAdmissionChartData(){
    return _enquiryUseCase.enquiryVsAdmissionChartData(state.value ?? []);
  }



}
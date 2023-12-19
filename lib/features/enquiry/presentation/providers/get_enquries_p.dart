
import 'dart:async';

import 'package:easy_education/features/enquiry/data/data_sources/enquiry_firebase_data_source_impl.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo_impl.dart';
import 'package:easy_education/features/enquiry/domain/use_cases/enquiry_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getEnquiryProvider = AsyncNotifierProvider.autoDispose<GetEnquiryP,List<EnquiryModel>>(()=>GetEnquiryP());

class GetEnquiryP extends AutoDisposeAsyncNotifier<List<EnquiryModel>>{
  final _enquiryUseCase = EnquiryUseCase(EnquiryRepoImpl(
    EnquiryFirebaseDataSourceImpl()
  ));

  bool _isFetching = false;

  @override
  FutureOr<List<EnquiryModel>> build() {
    return [];
  }

  Future<List<EnquiryModel>> getEnquiries({bool isRefresh = false,int limit = 7})async{
    if(isRefresh){
      state = const AsyncLoading();
    }
    try{
      state = AsyncData( await _enquiryUseCase.getLimitedEnquiries(limit: limit));
    }catch(e,st){
      state = AsyncError(e, st);
      if(kDebugMode){
        rethrow;
      }
    }
    return state.value ?? [];
  }


  Future<void> getEnquiriesLazy({required int limit,required int lastId})async{

    try{
      if(_isFetching){
        return;
      }
      _isFetching = true;
      state = AsyncData( [...state.value?? [],
        ...await _enquiryUseCase.getEnquiryLazy(limit: limit, lastId: lastId)]);
      _isFetching = false;
    }catch(e,st){
      state = AsyncError(e, st);
      if(kDebugMode){
        rethrow;
      }
    }
  }



}

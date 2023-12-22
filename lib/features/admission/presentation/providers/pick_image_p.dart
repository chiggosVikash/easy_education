
import 'dart:async';
import 'dart:io';

import 'package:easy_education/features/admission/domain/usecases/image_use_case.dart';
import 'package:easy_education/services/pick_image_service_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class PickImageP extends AutoDisposeAsyncNotifier<File?>{
  final _imageUseCase = ImageUseCase(imageService: PickImageServiceImpl());
  @override
  FutureOr<File?> build() {
    return null;
  }

  Future<void> pickCameraImage() async{
    state = const AsyncLoading();
    try{
      state = AsyncData(await _imageUseCase.galleryImage());
    }catch(e,st){
      state = AsyncError(e,st);
      if(kDebugMode)rethrow;
    }
  }




}
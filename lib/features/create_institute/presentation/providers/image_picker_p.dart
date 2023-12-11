

import 'dart:typed_data';

import 'package:easy_education/services/pick_image_service.dart';
import 'package:easy_education/services/pick_image_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final imagePickerProvider = AsyncNotifierProvider<ImagePickerP,Uint8List?>(()=> ImagePickerP());

class ImagePickerP extends AsyncNotifier<Uint8List?>{
  final PickImageService _imagePickerService = PickImageServiceImpl();

  @override
  Future<Uint8List?> build() {
    return Future.value(null);
  }

  Future<void> pickImage()async{
    state = const AsyncLoading();
    try{
      final image = await _imagePickerService.galleryImage(imageQuality: 50);
      state = AsyncData(image.readAsBytesSync());
    }catch(e,st){
      state = AsyncValue.error(e, st);
    }
  }


}
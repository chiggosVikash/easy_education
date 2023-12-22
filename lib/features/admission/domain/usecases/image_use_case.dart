
import 'dart:io';

import 'package:easy_education/services/pick_image_service.dart';

class ImageUseCase {
  final PickImageService _imageService;

  ImageUseCase({required PickImageService imageService})
      : _imageService = imageService;

   Future<File?> cameraImage()async{
      return await _imageService.cameraImage(imageQuality: 50);
   }

    Future<File?> galleryImage()async{
        return await _imageService.galleryImage(imageQuality: 50);
    }


}
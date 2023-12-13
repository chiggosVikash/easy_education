
import 'dart:io';

abstract interface class ImageStorageRepo{
  Future<bool> deleteImage({required String imagePath});

  Future<String> uploadImage({required String filePath,required File image});

}
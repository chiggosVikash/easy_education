
import 'dart:io';

abstract interface class ImageDataSource{
  Future<String> uploadImage({required File image,String? folderName});
  Future<bool> deleteImage({required String imageUrl});
}
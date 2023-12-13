
import 'dart:io';

abstract class ImageDataSource{
  Future<String> uploadImage({required File image,required String fileName});
  Future<bool> deleteImage({required String imageUrl});
}
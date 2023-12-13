
import 'dart:io';

import '../../data/data_sources/image_datasource.dart';
import 'image_storage_repo.dart';

class ImageStorageRepoImpl implements ImageStorageRepo{
  final ImageDataSource _imageDataSource;

  const ImageStorageRepoImpl(this._imageDataSource);

  @override
  Future<bool> deleteImage({required String imagePath}) {
    return _imageDataSource.deleteImage(imageUrl: imagePath);
  }

  @override
  Future<String> uploadImage({required String filePath, required File image}) {
    return _imageDataSource.uploadImage(image: image, fileName: filePath);
  }
}
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'pick_image_service.dart';

@immutable
class PickImageServiceImpl implements PickImageService {
  final _imagePicker = ImagePicker();

  /// Captures an image using the device's camera with optional image quality.
  ///
  /// This method opens the device's camera and allows the user to capture an image.
  /// The captured image is then returned as a [File].
  ///
  /// [imageQuality]: An optional parameter for specifying the image quality.
  /// If not specified, the default quality is used.
  ///
  /// Returns a [File] representing the captured image.
  ///
  /// Throws an exception if an error occurs during the image capture process.

  @override
  Future<File> cameraImage({required int imageQuality}) async {
    try {
      final imageRawData = await _imagePicker.pickImage(
          source: ImageSource.camera, imageQuality: imageQuality);
      if (imageRawData == null) {
        throw Exception("Camera Image not picked");
      }
      final imageFile = File(imageRawData.path);
      return imageFile;
    } catch (e) {
      rethrow;
    }
  }

  /// Selects an image from the device's gallery with optional image quality.
  ///
  /// This method opens the device's image gallery and allows the user to select
  /// an image. The selected image is then returned as a [File].
  ///
  /// [imageQuality]: An optional parameter for specifying the image quality.
  /// If not specified, the default quality is used.
  ///
  /// Returns a [File] representing the selected image.
  ///
  /// Throws an exception if an error occurs during the image selection process.

  @override
  Future<File> galleryImage({required int imageQuality}) async {
    try {
      final imageRawData = await _imagePicker.pickImage(
          source: ImageSource.gallery, imageQuality: imageQuality);
      if (imageRawData == null) {
        throw Exception("Gallery Image not picked");
      }
      final imageFile = File(imageRawData.path);
      return imageFile;
    } catch (e) {
      rethrow;
    }
  }
}

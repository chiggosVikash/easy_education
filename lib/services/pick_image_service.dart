import 'dart:io';

/// An abstract class for image picking services.
///
/// Concrete implementations of this class should provide methods for capturing
/// images using the camera and selecting images from the gallery, with an
/// optional parameter for image quality.
abstract class PickImageService {
  /// Captures an image using the device's camera.
  ///
  /// [imageQuality]: An parameter for specifying the image quality.
  ///
  /// Returns a [File] representing the captured image.
  Future<File> cameraImage({required int imageQuality});

  /// Selects an image from the device's gallery.
  ///
  /// [imageQuality]: An parameter for specifying the image quality.
  ///
  /// Returns a [File] representing the selected image.
  Future<File> galleryImage({required int imageQuality});
}


import 'dart:io';

import 'package:easy_education/features/admission/data/data_sources/image_data_source.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageFirebaseDataSourceImpl implements ImageDataSource{
  final _storage = FirebaseStorage.instance;
  @override
  Future<bool> deleteImage({required String imageUrl}) async{
    await _storage.refFromURL(imageUrl).delete();
    return true;
  }

  @override
  Future<String> uploadImage({required File image, String? folderName}) async{
    final snapshot = await _storage
        .ref().child(folderName??'')
        .child(image.path).putFile(image);
    return await snapshot.ref.getDownloadURL();
  }

}
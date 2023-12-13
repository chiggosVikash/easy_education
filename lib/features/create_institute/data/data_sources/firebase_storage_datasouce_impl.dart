
import 'dart:io';

import 'package:easy_education/features/create_institute/data/data_sources/image_datasource.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageDatasourceImpl implements ImageDataSource {

  final _storage = FirebaseStorage.instance;

  @override
  Future<bool> deleteImage({required String imageUrl}) async{
    try{
      await _storage.refFromURL(imageUrl).delete();
      return true;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<String> uploadImage({required File image,required String fileName}) async{
    try{
      final ref = _storage.ref().child("institute_logos/$fileName");
      final snapshot = ref.putFile(image).snapshot;
      return await snapshot.ref.getDownloadURL();

    }catch(e){
      rethrow;
    }
  }

}
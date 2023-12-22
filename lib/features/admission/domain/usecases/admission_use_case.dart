
import 'dart:io';

import 'package:easy_education/features/admission/data/data_sources/admission_firebase_data_source_impl.dart';

import '../../data/data_sources/image_firebase_data_source_impl.dart';
import '../../data/models/admission_model.dart';
import '../repos/admission_repo.dart';
import '../repos/admission_repo_impl.dart';

class AdmissionUseCase{
  final AdmissionRepo _admissionRepo = AdmissionRepoImpl(
      admissionDataSource: AdmissionFirebaseDataSourceImpl(),
      imageDataSource: ImageFirebaseDataSourceImpl());

  Future<bool> createAdmission({required AdmissionModel admissionModel}) async{
    return await _admissionRepo.createAdmission(admissionModel: admissionModel);
  }

  Future<bool> deleteAdmission({required String registrationNo}) async{
    return await _admissionRepo.deleteAdmission(registrationNo: registrationNo);
  }

  Future<String> uploadImage({required File image,String? folderName}) async{
    return await _admissionRepo.uploadImage(image: image, folderName: folderName);
  }

}
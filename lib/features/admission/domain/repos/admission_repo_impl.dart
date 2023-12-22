
import 'dart:io';

import 'package:easy_education/features/admission/data/data_sources/admission_data_source.dart';
import 'package:easy_education/features/admission/data/models/admission_model.dart';

import '../../data/data_sources/image_data_source.dart';
import 'admission_repo.dart';

class AdmissionRepoImpl implements AdmissionRepo{
  final AdmissionDataSource _admissionDataSource;
  final ImageDataSource _imageDataSource;
  const AdmissionRepoImpl({required AdmissionDataSource admissionDataSource,
    required ImageDataSource imageDataSource})
      : _admissionDataSource = admissionDataSource,
        _imageDataSource = imageDataSource;
  @override
  Future<bool> createAdmission({required AdmissionModel admissionModel}) {
    return _admissionDataSource.createAdmission(admissionModel: admissionModel);
  }

  @override
  Future<bool> deleteAdmission({required String registrationNo}) {
    return _admissionDataSource.deleteAdmission(registrationNo: registrationNo);
  }

  @override
  Future<bool> deleteImage({required String imageUrl}) {
    return _imageDataSource.deleteImage(imageUrl: imageUrl);
  }

  @override
  Future<AdmissionModel> getAdmission({String? registrationNo, String? formNo}) {
    return _admissionDataSource.getAdmission(registrationNo: registrationNo, formNo: formNo);
  }

  @override
  Future<List<AdmissionModel>> getAdmissions({required int limit, required String lastRegNo}) {
    return _admissionDataSource.getAdmissions(limit: limit, lastRegNo: lastRegNo);
  }

  @override
  Future<List<AdmissionModel>> getLimitedAdmissions({required int limit}) {
    return _admissionDataSource.getLimitedAdmissions(limit: limit);
  }

  @override
  Future<AdmissionModel> updateAdmission({required AdmissionModel admissionModel}) {
    return _admissionDataSource.updateAdmission(admissionModel: admissionModel);
  }

  @override
  Future<String> uploadImage({required File image, String? folderName}) {
    return _imageDataSource.uploadImage(image: image, folderName: folderName);
  }

}
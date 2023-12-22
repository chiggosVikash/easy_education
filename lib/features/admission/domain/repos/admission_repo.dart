
import 'dart:io';

import '../../data/models/admission_model.dart';

abstract interface class AdmissionRepo{
  Future<AdmissionModel> getAdmission({String? registrationNo,String? formNo});
  Future<bool> createAdmission({required AdmissionModel admissionModel});
  Future<AdmissionModel> updateAdmission({required AdmissionModel admissionModel});
  Future<bool> deleteAdmission({required String registrationNo});
  Future<List<AdmissionModel>> getLimitedAdmissions({required int limit});
  Future<List<AdmissionModel>> getAdmissions({required int limit,required String lastRegNo});
  Future<String> uploadImage({required File image,String? folderName});
  Future<bool> deleteImage({required String imageUrl});
}
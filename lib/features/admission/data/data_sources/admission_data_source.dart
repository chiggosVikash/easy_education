
import '../models/admission_model.dart';

abstract interface class AdmissionDataSource{
  Future<AdmissionModel> getAdmission({String? registrationNo,String? formNo});
  Future<bool> createAdmission({required AdmissionModel admissionModel});
  Future<AdmissionModel> updateAdmission({required AdmissionModel admissionModel});
  Future<bool> deleteAdmission({required String registrationNo});
  Future<List<AdmissionModel>> getLimitedAdmissions({required int limit});
  Future<List<AdmissionModel>> getAdmissions({required int limit,required String lastRegNo});
}
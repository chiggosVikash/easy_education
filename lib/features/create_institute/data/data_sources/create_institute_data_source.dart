
import '../models/institute_model.dart';

abstract interface class CreateInstituteDataSource {
  Future<bool> createInstitute({required InstituteModel instituteModel});
  Future<bool> updateInstitute({required InstituteModel instituteModel});
  Future<bool> deleteInstitute({required String instituteId});
  Future<InstituteModel> getInstitute({required String instituteId});

  Future<bool> isExistingInstitute({required String instituteId});
}

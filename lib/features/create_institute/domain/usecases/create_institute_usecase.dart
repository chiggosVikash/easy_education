
import 'dart:typed_data';

import 'package:easy_education/features/create_institute/domain/repos/create_institute_repo.dart';
import 'package:easy_education/services/email_auth_service.dart';

import '../../../../services/email_auth_service_impl.dart';
import '../../data/data_sources/create_institute_firebase_datasource_impl.dart';
import '../../data/models/institute_model.dart';
import '../repos/create_institute_repo_impl.dart';

class CreateInstituteUseCase{
  final CreateInstituteRepo _createInstituteRepo = CreateInstituteRepoImpl(
    CreateInstituteFirebaseDataSourceImpl()
  );


  final EmailAuthService _emailAuthService = EmailAuthServiceImpl();

  Future<bool> createInstitute({required InstituteModel instituteModel}){
    return _createInstituteRepo.createInstitute(instituteModel: instituteModel);
  }

  Future<bool> updateInstitute({required InstituteModel instituteModel}){
    return _createInstituteRepo.updateInstitute(instituteModel: instituteModel);
  }

  Future<bool> deleteInstitute({required String instituteId}){
    return _createInstituteRepo.deleteInstitute(instituteId: instituteId);
  }

  Future<InstituteModel> getInstitute({required String instituteId}){
    return _createInstituteRepo.getInstitute(instituteId: instituteId);
  }

  Future<bool> isExistingInstitute({required String instituteId}){
    return _createInstituteRepo.isExistingInstitute(instituteId: instituteId);
  }


  Future<bool> sendOtp({required String userEmail})async{
    _emailAuthService.setConfig(userEmail: userEmail);
    return await _emailAuthService.sendOtp();
  }

  bool verifyOtp({required String otp}){
    return _emailAuthService.verifyOtp(otp);
  }

  InstituteModel addEmail({required String email,required InstituteModel model}){
    return model.copyWith(email: email);
  }

  InstituteModel addLogoBytes({required Uint8List logoBytes,required InstituteModel model}){
    return model.copyWith(logoByte: logoBytes);
  }


}
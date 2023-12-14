
import 'dart:io';
import 'dart:typed_data';

import 'package:easy_education/features/create_institute/domain/repos/create_institute_repo.dart';
import 'package:easy_education/features/create_institute/domain/repos/image_storage_repo.dart';
import 'package:easy_education/services/email_auth_service.dart';

import '../../../../services/email_auth_service_impl.dart';
import '../../data/data_sources/create_institute_firebase_datasource_impl.dart';
import '../../data/data_sources/firebase_storage_datasouce_impl.dart';
import '../../../../databases/local/share_pref_data_source_impl.dart';
import '../../data/models/institute_model.dart';
import '../repos/create_institute_repo_impl.dart';
import '../repos/image_storage_repo_impl.dart';

class CreateInstituteUseCase{
  final CreateInstituteRepo _createInstituteRepo = CreateInstituteRepoImpl(
    CreateInstituteFirebaseDataSourceImpl(),
    SharePrefDataSourceImpl()
  );

  final ImageStorageRepo _imageStorageRepo = ImageStorageRepoImpl(
    FirebaseStorageDatasourceImpl()
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

  Future<String> uploadImage({required String filePath, required File image}){
    return _imageStorageRepo.uploadImage(filePath: filePath, image: image);
  }

  Future<bool> deleteImage({required String imagePath}){
    return _imageStorageRepo.deleteImage(imagePath: imagePath);
  }

  Future<bool> saveInstituteEmailAndNameToLocalStorage({required String email, required String name}){
    return _createInstituteRepo.saveInstituteEmailAndNameToLocalStorage(email: email, name: name);
  }



}
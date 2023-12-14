
import 'package:easy_education/databases/local/local_db_query.dart';
import 'package:easy_education/features/create_institute/data/models/institute_model.dart';
import 'package:easy_education/features/create_institute/domain/repos/create_institute_repo.dart';

import '../../data/data_sources/create_institute_data_source.dart';

class CreateInstituteRepoImpl implements CreateInstituteRepo{

  final CreateInstituteDataSource _createInstituteDataSource;
  final LocalDbQuery _createInstituteToLocal;

  const CreateInstituteRepoImpl(this._createInstituteDataSource,this._createInstituteToLocal);
  @override
  Future<bool> createInstitute({required InstituteModel instituteModel}) {
    return _createInstituteDataSource.createInstitute(instituteModel: instituteModel);
  }

  @override
  Future<bool> deleteInstitute({required String instituteId}) {
    return _createInstituteDataSource.deleteInstitute(instituteId: instituteId);
  }

  @override
  Future<InstituteModel> getInstitute({required String instituteId}) {
    return _createInstituteDataSource.getInstitute(instituteId: instituteId);
  }

  @override
  Future<bool> isExistingInstitute({required String instituteId}) {
    return _createInstituteDataSource.isExistingInstitute(instituteId: instituteId);
  }

  @override
  Future<bool> updateInstitute({required InstituteModel instituteModel}) {
    return _createInstituteDataSource.updateInstitute(instituteModel: instituteModel);
  }

  @override
  Future<bool> saveInstituteEmailAndNameToLocalStorage({required String email, required String name}) async{
    bool status = await _createInstituteToLocal.saveEmail(email: email);
    status = await _createInstituteToLocal.saveName(name: name);
    if(status){
      return true;
    }
    throw Exception("Failed to save email and name");
  }

}
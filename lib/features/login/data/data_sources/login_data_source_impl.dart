
import 'package:easy_education/databases/local/local_db_query.dart';
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_data_source.dart';
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_firebase_datasource_impl.dart';
import 'package:easy_education/databases/local/share_pref_data_source_impl.dart';
import 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource{
  final CreateInstituteDataSource _createInstituteDataSource = CreateInstituteFirebaseDataSourceImpl();
  final LocalDbQuery _createInstituteToLocal = SharePrefDataSourceImpl();
  @override
  Future<bool> isInstituteExist(String email) async{
    try{
      final status = await _createInstituteDataSource.isExistingInstitute(instituteId: email);
      if(status){
        return true;
      }else{
        throw Exception('Institute does not exist');
      }
    }catch(e){
      rethrow;
    }

  }

  @override
  Future<bool> saveInstituteEmailToLocal({required String email}) async{
    try{
      final status = await _createInstituteToLocal.saveEmail(email: email);
      if(status){
        return true;
      }else{
        throw Exception('Failed to save email');
      }
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> isUserExistLocally() {
   return _createInstituteToLocal.isUserLoggedIn();
  }

}
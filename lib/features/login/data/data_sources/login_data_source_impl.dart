
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_data_source.dart';
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_firebase_datasource_impl.dart';
import 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource{
  final CreateInstituteDataSource _createInstituteDataSource = CreateInstituteFirebaseDataSourceImpl();
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

}
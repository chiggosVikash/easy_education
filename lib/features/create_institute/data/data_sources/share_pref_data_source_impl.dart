
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_to_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefDataSourceImpl implements CreateInstituteToLocal{
  late final SharedPreferences _instance;

  SharePrefDataSourceImpl() {
    _init();
  }

  Future<void>_init()async{
    _instance = await SharedPreferences.getInstance();
  }
  @override
  String getEmail(){
    try{
      final email = _instance.getString("email");
      if(email == null){
        throw Exception("Email not found");
      }
      return email;

    }catch(e){
      rethrow;
    }
  }

  @override
  String getName() {
    try{
      final name = _instance.getString("name");
      if(name == null){
        throw Exception("Name not found");
      }
      return name;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> saveEmail({required String email}) async{
    final status = await _instance.setString("email", email);
    if(status){
      return true;
    }
    throw Exception("Failed to save email");


  }

  @override
  Future<bool> saveName({required String name}) async {
    final status = await _instance.setString("name", name);
    if (status) {
      return true;
    }
    throw Exception("Failed to save name");
  }
}

import 'package:easy_education/databases/local/local_db_query.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefDataSourceImpl implements LocalDbQuery{

  SharePrefDataSourceImpl();

  Future<SharedPreferences> get _instance async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<String> getEmail()async{
    try{
      final inst = await _instance;
      final email = inst.getString("email");
      if(email == null){
        throw Exception("Email not found");
      }
      return email;

    }catch(e){
      rethrow;
    }
  }

  @override
  Future<String> getName() async{
    try{
      final inst = await _instance;
      final name = inst.getString("name");
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
    final inst = await _instance;
    final status = await inst.setString("email", email);
    if(status){
      return true;
    }
    throw Exception("Failed to save email");
  }

  @override
  Future<bool> saveName({required String name}) async {
    final inst = await _instance;
    final status = await inst.setString("name", name);
    if (status) {
      return true;
    }
    throw Exception("Failed to save name");
  }

  @override
  Future<bool> isUserLoggedIn() async{
    try{
      final inst = await _instance;
      final email = inst.getString("email");
      if(email == null){
        return false;
      }
      return true;
    }catch(e){
      rethrow;
    }
  }
}
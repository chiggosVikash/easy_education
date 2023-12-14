
import '../../data/data_sources/login_data_source.dart';
import 'login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginDataSource _loginDataSource;

  LoginRepoImpl({required LoginDataSource loginDataSource})
      :
        _loginDataSource = loginDataSource;

  @override
  Future<bool> isInstituteExist(String email) async {
    return await _loginDataSource.isInstituteExist(email);
  }

  @override
  Future<bool> saveInstituteEmailToLocal({required String email}) {
    return _loginDataSource.saveInstituteEmailToLocal(email: email);
  }

  @override
  Future<bool> isUserExistLocally() {
    return _loginDataSource.isUserExistLocally();
  }
}

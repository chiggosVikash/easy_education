

import 'package:easy_education/features/login/domain/repos/login_repo.dart';

import '../../data/data_sources/login_data_source_impl.dart';
import '../repos/login_repo_impl.dart';

class LoginUseCase {
  final LoginRepo _repository = LoginRepoImpl(
     loginDataSource:  LoginDataSourceImpl(),
  );

  Future<bool> isInstituteExist(String email) async {
    return await _repository.isInstituteExist(email);
  }

}
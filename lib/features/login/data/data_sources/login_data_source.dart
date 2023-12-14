
abstract interface class LoginDataSource{
  Future<bool> isInstituteExist(String email);
  Future<bool> saveInstituteEmailToLocal({required String email});
  Future<bool> isUserExistLocally();
}
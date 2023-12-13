
abstract interface class LoginDataSource{
  Future<bool> isInstituteExist(String email);
}
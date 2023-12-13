
abstract interface class LoginRepo {
  Future<bool> isInstituteExist(String email);
}

abstract interface class LoginRepo {
  Future<bool> isInstituteExist(String email);
  Future<bool> saveInstituteEmailToLocal({required String email});
  Future<bool> isUserExistLocally();
}
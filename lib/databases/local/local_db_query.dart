
abstract class LocalDbQuery {
  Future<bool> saveEmail({required String email});
  Future<bool> saveName({required String name});

  Future<String> getEmail();
  Future<String> getName();

  Future<bool> isUserLoggedIn();

}


abstract interface class CreateInstituteToLocal {
  Future<bool> saveEmail({required String email});
  Future<bool> saveName({required String name});

  String getEmail();
  String getName();


}
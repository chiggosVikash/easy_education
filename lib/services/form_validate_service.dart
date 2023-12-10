
abstract interface class FormValidateService{
  dynamic validateEmail(String? email);
  dynamic validatePassword(String? password);
  dynamic validateName(String? name);
  dynamic validatePhone(String? phone);
}
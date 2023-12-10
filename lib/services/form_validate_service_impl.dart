import 'form_validate_service.dart';

class FormValidateServiceImpl implements FormValidateService{
  @override
  dynamic validateEmail(String? email) {
    final RegExp emailRegex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if(email == null || email.isEmpty){
      return "Email cannot be empty";
    }

    else if(!emailRegex.hasMatch(email)){
      return "Invalid email";
    }
  }

  @override
  dynamic validateName(String? name) {
    final RegExp nameRegex = RegExp(r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");
    if(name == null || name.isEmpty){
      return "Name cannot be empty";
    }
    else if (!nameRegex.hasMatch(name)){
      return "Invalid name";
    }

  }

  @override
  dynamic validatePassword(String? password) {
    if(password == null || password.isEmpty) {
      return "Password cannot be empty";
    }
    else if (password.length < 6){
      return "Password must should at least 6 character";
    }
  }

  @override
  dynamic validatePhone(String? phone) {
    final RegExp phoneRegex = RegExp(r"^[0-9]{10}$");
    if(phone == null || phone.isEmpty){
      return "Phone cannot be empty";
    }
   else if (!phoneRegex.hasMatch(phone)){
     return "Invalid phone";
    }
  }


}

import 'package:easy_education/utils/enums/otp_type_enum.dart';

abstract interface class EmailAuthService{
  void setConfig({String appName = "Easy Education", String appEmail = "royviku336@gmail.com",int? otpLength,
  OTPType? otpType,
    required String userEmail
  });
  Future<bool> sendOtp();
  bool verifyOtp(String otp);
}
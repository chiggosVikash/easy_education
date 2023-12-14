
import 'package:easy_education/services/email_auth_service.dart';
import 'package:easy_education/utils/enums/otp_type_enum.dart';
import 'package:email_otp/email_otp.dart' as emailOtp;

class EmailAuthServiceImpl implements EmailAuthService{
  final emailOtp.EmailOTP _emailOTP = emailOtp.EmailOTP();

  @override
  Future<bool> sendOtp() async{
    try{
      final status = await _emailOTP.sendOTP();
      return status;
    }catch(e){
      rethrow;
    }
  }

  @override
  void setConfig({String appName = "Easy Education",
    String appEmail = "royviku336@gmail.com",
    required String userEmail,
    int? otpLength, OTPType? otpType}) {
    _emailOTP.setConfig(appName: appName,appEmail: appEmail,otpLength: otpLength,otpType: otpType,
    userEmail: userEmail
    );
  }

  @override
  bool verifyOtp(String otp) {
    return _emailOTP.verifyOTP(otp: otp);
  }

}
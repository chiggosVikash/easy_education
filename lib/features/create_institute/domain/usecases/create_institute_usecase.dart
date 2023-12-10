
import 'package:easy_education/services/email_auth_service.dart';

import '../../../../services/email_auth_service_impl.dart';
class CreateInstituteUseCase{

  final EmailAuthService _emailAuthService = EmailAuthServiceImpl();

  Future<bool> sendOtp({required String userEmail})async{
    _emailAuthService.setConfig(userEmail: userEmail);
    return await _emailAuthService.sendOtp();
  }

  bool verifyOtp({required String otp}){
    return _emailAuthService.verifyOtp(otp);
  }


}
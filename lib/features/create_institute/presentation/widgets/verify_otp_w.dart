import 'package:easy_education/features/create_institute/presentation/providers/add_institute_p.dart';
import 'package:easy_education/features/create_institute/presentation/providers/email_validator_p.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/otp_validator_p.dart';
import 'verify_otp_button_w.dart';

class VerifyOtpW extends ConsumerWidget{
  final String _email;
  final TextEditingController _otpController;
  const VerifyOtpW({Key? key,required TextEditingController otpController,
  required String email,
  }) :_otpController = otpController,
        _email = email,
        super(key: key);

  @override
  Widget build(BuildContext context , WidgetRef ref){
    return Container(
      margin: EdgeInsets.only(top: context.height*.07),
      padding: EdgeInsets.symmetric(horizontal: context.width*.03),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

         TextFormField(
           controller: _otpController,
           decoration: const InputDecoration(
               isDense: true,
               labelText: "Enter OTP*",
               suffixIcon: Icon(
                   Icons.abc,
               ),
           ),
         ),

         SizedBox(height: context.height*.02,),

         Center(
           child: SizedBox(
              width: context.width*.75,
               child: Consumer(builder: (context, ref, child) {
                final isValid = ref.watch(otpValidatorProvider);
                 return VerifyOtpButtonW(onPressed: (){
                   final status = ref.read(emailValidatorProvider.notifier).validateOtp(otp: _otpController.text);
                   if(status == true){
                     ref.read(addInstituteProvider.notifier).addEmail(_email);
                   }

                 },
                  buttonText: isValid == null ? "Verify OTP" : isValid ? "Verified Successfully" : "Invalid OTP Try Again",
                 );
                 },
               )),
         )
      ],),
    );
  }
}
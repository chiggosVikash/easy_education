import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'verify_otp_button_w.dart';

class VerifyOtpW extends ConsumerWidget{
  final TextEditingController _otpController;
  const VerifyOtpW({Key? key,required TextEditingController otpController,}) :_otpController = otpController, super(key: key);

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
               child: VerifyOtpButtonW(onPressed: (){},)),
         )
      ],),
    );
  }
}
import 'package:easy_education/features/create_institute/domain/usecases/create_institute_usecase.dart';
import 'package:easy_education/features/create_institute/presentation/providers/add_institute_p.dart';
import 'package:easy_education/features/create_institute/presentation/providers/email_validator_p.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/otp_validator_p.dart';
import 'verify_otp_button_w.dart';

class VerifyOtpW extends ConsumerWidget{
  final TextEditingController _otpController;
  final VoidCallback _onVerifiedSuccess;
  final CreateInstituteUseCase? _createInstituteUseCase;
  const VerifyOtpW({Key? key,required TextEditingController otpController,
    required VoidCallback onVerifiedSuccess,
    CreateInstituteUseCase? createInstituteUseCase

  }) :_otpController = otpController,
        _onVerifiedSuccess = onVerifiedSuccess,
        _createInstituteUseCase = createInstituteUseCase,
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
                   final status = ref.read(emailValidatorProvider.notifier).validateOtp(otp: _otpController.text,
                        createInstituteUseCase: _createInstituteUseCase
                   );
                   if(status == true){
                      _onVerifiedSuccess();

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
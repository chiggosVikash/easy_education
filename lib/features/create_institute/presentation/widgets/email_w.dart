import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/allow_button_enable_p.dart';
import '../providers/email_validator_p.dart';
import 'send_otp_button_w.dart';

class EmailW extends ConsumerWidget{
  final TextEditingController _emailController;
  const EmailW({super.key,required TextEditingController emailController}):_emailController = emailController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: _emailController,
      onChanged: (value) => ref.read(allowButtonEnableProvider.notifier).allowButtonEnable(email: value),
      decoration:  InputDecoration(
        isDense: true,
        labelText: "Email*",
        suffixIcon: Consumer(builder: (context, ref, child) {
          final state = ref.watch(allowButtonEnableProvider);

          final emailValidatorState = ref.watch(emailValidatorProvider);

          if(emailValidatorState.isLoading){
            return const SizedBox(
                height: 4,
                width: 4,
                child: RepaintBoundary(child: CircularProgressIndicator()));
          }
          // else if (emailValidatorState.value == true){
          //   return const Icon(Icons.check,color: Colors.green,);
          // }
          return SendOtpButtonW(onPressed: state == true ?  (){
            ref.read(emailValidatorProvider.notifier).sendOtp(userEmail: _emailController.text);
          }: null,);
        },),
      ),
    );
  }

}
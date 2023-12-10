import 'package:easy_education/features/create_institute/presentation/providers/allow_button_enable_p.dart';
import 'package:easy_education/features/create_institute/presentation/providers/email_validator_p.dart';
import 'package:easy_education/features/create_institute/presentation/widgets/create_button_w.dart';
import 'package:easy_education/features/create_institute/presentation/widgets/send_otp_button_w.dart';
import 'package:easy_education/features/create_institute/presentation/widgets/succesful_dialog_w.dart';
import 'package:easy_education/features/create_institute/presentation/widgets/verify_otp_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AddInstituteDetailsW extends ConsumerWidget {
  final TextEditingController _otpController ;
  final TextEditingController _emailController;
  final TextEditingController _addressController;
  final TextEditingController _phoneNoController;
  final TextEditingController _registrationNoController;
  final TextEditingController _instituteNameController;


  const AddInstituteDetailsW({super.key,required TextEditingController otpController,
    required TextEditingController emailController,
    required TextEditingController addressController,
    required TextEditingController phoneNoController,
    required TextEditingController registrationNoController,
    required TextEditingController instituteNameController,
  }) :
        _otpController = otpController,
        _emailController = emailController,
        _addressController = addressController,
        _phoneNoController = phoneNoController,
        _registrationNoController = registrationNoController,
        _instituteNameController = instituteNameController;

  final double _verticalSpace = .02;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(top: context.height*.07),
      padding: EdgeInsets.symmetric(horizontal: context.width*.03),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

         TextFormField(
           controller: _instituteNameController,
           decoration: const InputDecoration(
               isDense: true,
               labelText: "Institute Name*",
               suffixIcon: Icon(
                   Icons.abc,
               ),
           ),
         ),

         SizedBox(height: context.height*_verticalSpace,),

         TextFormField(
           controller: _registrationNoController,
           decoration: const InputDecoration(
               isDense: true,
               labelText: "Registration no ",
               suffixIcon: Icon(
                   Icons.onetwothree_outlined,
               ),
           ),
         ),

         SizedBox(height: context.height*_verticalSpace,),
         
         TextFormField(
           controller: _phoneNoController,
           decoration: const InputDecoration(
               isDense:true,
               labelText: "Phone no.*",
               suffixIcon: Icon(
                   Icons.phone),
           ),
         ),

         SizedBox(height: context.height*_verticalSpace,),
         
         // TextFormField(
         //   decoration: const InputDecoration(
         //       isDense: true,
         //       labelText: "Password*",
         //       suffixIcon: Icon(
         //           Icons.lock_outline,
         //       ),
         //   ),
         // ),
         //
         // SizedBox(height: context.height*_verticalSpace,),
         
         TextFormField(
           controller: _addressController,
           decoration: const InputDecoration(
               isDense: true,
               labelText: "Address*",
               suffixIcon: Icon(
                   Icons.home_outlined),
           ),
         ),

        SizedBox(height: context.height*_verticalSpace,),

        TextFormField(
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
        ),

         Consumer(builder: (context, ref, child) {
           final state = ref.watch(emailValidatorProvider);
           if(state.isLoading){
             return const SizedBox(
                 height: 10,
                 width: 10,
                 child: RepaintBoundary(child: CircularProgressIndicator()));
           }
           else if (state.hasError){
             return Text("Error: Failed to send otp ${state.error}");
           }
           else if(state.value == true){
             return VerifyOtpW(otpController: _otpController);
           }
           return const SizedBox();


           },),

         SizedBox(height: context.height*.13,),


         Center(child: CreateButtonW(
          text: "Create",
          onPressed: (){
               showGeneralDialog(context: context,
                 transitionDuration: const  Duration(milliseconds: 600),
                 transitionBuilder: (context, animation, secondaryAnimation, child) {
                   final position = Tween<Offset>(begin: const Offset(0, -1),end: Offset.zero).animate(CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn));
                   return SlideTransition(position: position ,child: child,);
                 },
                pageBuilder: (context,anim,secAnim) => const SchoolCreatedSuccessDialogW());
         }))

      ],),
    );
  }
}
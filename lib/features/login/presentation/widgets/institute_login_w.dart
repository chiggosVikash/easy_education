import 'package:easy_education/features/create_institute/presentation/widgets/verify_otp_w.dart';
import 'package:easy_education/features/login/presentation/providers/institute_existence_p.dart';
import 'package:easy_education/features/login/presentation/widgets/begin_login_button_w.dart';
import 'package:easy_education/features/login/presentation/widgets/login_button_w.dart';
import 'package:easy_education/utils/dialogues/failed_dialogue.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SchoolLoginW extends ConsumerStatefulWidget {
  const SchoolLoginW({super.key,});

  @override
  ConsumerState<SchoolLoginW> createState() => _SchoolLoginWState();
}

class _SchoolLoginWState extends ConsumerState<SchoolLoginW> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _otpController.dispose();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).canvasColor
      ),
      padding: EdgeInsets.symmetric(horizontal: context.width*.04,vertical: context.height*.01),
      margin: EdgeInsets.symmetric(horizontal: context.width*.03),
      child: Column(children: [
         SizedBox(height: context.height*.02,),
      
         TextFormField(
           controller: _emailController,
           decoration: const InputDecoration(isDense: true,labelText: "Email ",suffixIcon: Icon(Icons.code),
         ),),
      
         // SizedBox(height: context.height*.02,),
         //
         // TextFormField(decoration: const  InputDecoration(isDense: true, labelText: "Password",suffixIcon: Icon(Icons.lock_outlined)
         //  )),
      
         SizedBox(height: context.height*.15,),
      
         // LoginButtonW(
         //  onTap: (){},
         //  height: context.height*.045, width: context.width*.4),

        Consumer(builder: (context, ref, child) {
          final status = ref.watch(instituteExistenceProvider);
          if(status is AsyncLoading) {
            return const Center(child: CircularProgressIndicator(),);
          } else if(status is AsyncError){
            Future((){
              _showDialogue("Login Failed", status.error.toString());
            });
            return BeginLoginButtonW(onPressed: (){
              ref.read(instituteExistenceProvider.notifier).checkInstituteExistence(_emailController.text.trim());
            },);
          }
          else if(status is AsyncData && status.value == true){
           return VerifyOtpW(otpController: _otpController, email: _emailController.text.trim(),);
          }
          else if(status is AsyncData && status.value == false){
          return BeginLoginButtonW(onPressed: (){
            ref.read(instituteExistenceProvider.notifier).checkInstituteExistence(_emailController.text.trim());
          },);
          }

            return const SizedBox();


          },),
      
         SizedBox(height: context.height*.04,),
      
      
        ],),);
  }

  void _showDialogue(String title,String message){
    showDialog(context: context, builder: (context){
      return FailedDialogue(title: title, errorMessage: message);
    });
  }
}
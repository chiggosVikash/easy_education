import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactDetails extends ConsumerWidget {
  final TextEditingController _phoneController;
  final TextEditingController _emailController;
  final TextEditingController _fatherPhoneController;
  final TextEditingController _motherPhoneController;
  final TextEditingController _fatherEmailController;
  final TextEditingController _motherEmailController;

  final double verSpace;
  const ContactDetails({super.key,required this.verSpace,
    required TextEditingController phoneController,
    required TextEditingController emailController,
    required TextEditingController fatherPhoneController,
    required TextEditingController motherPhoneController,
    required TextEditingController fatherEmailController,
    required TextEditingController motherEmailController,
  }) : _phoneController = phoneController,
        _emailController = emailController,
        _fatherPhoneController = fatherPhoneController,
        _motherPhoneController = motherPhoneController,
        _fatherEmailController = fatherEmailController,
        _motherEmailController = motherEmailController;



@override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      const HeaderText(text: "Contact Information"),
      SizedBox(height: context.height*.01,),
      Container(
        decoration: context.customBoxDecoration,
        margin: EdgeInsets.symmetric(horizontal: context.width*.02,),
        padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Phone No *"),
              controller: _phoneController,
            ),
            SizedBox(height: context.height*verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Email"),
              controller: _emailController,
            ),
            SizedBox(height: context.height*verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Father's Phone No"),
              controller: _fatherPhoneController,
            ),
            SizedBox(height: context.height*verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Father's Email "),
              controller: _fatherEmailController,
            ),
            SizedBox(height: context.height*verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Mother's Phone No "),
              controller: _motherPhoneController,
            ),

            SizedBox(height: context.height*verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Mother's Email "),
              controller: _motherEmailController,
            ),


          ],
        ),
      ),

    ],);
  }
}



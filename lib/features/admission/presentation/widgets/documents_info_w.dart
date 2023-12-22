import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

import '../../../enquiry/presentation/widgets/header_text.dart';

class DocumentInfoW extends StatelessWidget {
  const DocumentInfoW({super.key});

  final double _verSpace = .02;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      const HeaderText(text: "Document Information"),

      Container(
        decoration:context.customBoxDecoration,
        padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
        margin: EdgeInsets.symmetric(horizontal: context.width*.02,vertical: context.height*.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,))),

            SizedBox(height: context.height*_verSpace,),

            TextFormField(decoration: const InputDecoration(
                labelText: "Student Aadhaar No. *",
                suffixIcon:  Icon(Icons.link)
            ),),

            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Father's Aadhaar No *",
                suffixIcon:  Icon(Icons.person)
            ),),

            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Mother's Aadhaar No*",
                suffixIcon:  Icon(Icons.person)
            ),),
            SizedBox(height: context.height*_verSpace,),

          ],),)
    ],);
  }
}

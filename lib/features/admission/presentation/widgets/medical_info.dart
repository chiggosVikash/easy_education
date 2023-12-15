import 'package:easy_education/features/admission/presentation/widgets/blood_group_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class MedicalInfo extends StatelessWidget {
  final double verSpace;
  const MedicalInfo({super.key,required this.verSpace});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      const HeaderText(text: "Medical Information"),

      Container(
        decoration:context.customBoxDecoration,
        padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
        margin: EdgeInsets.symmetric(horizontal: context.width*.02,vertical: context.height*.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,),)),
          SizedBox(height: context.height*verSpace,),
          BloodGroupField(),
          SizedBox(height: context.height*verSpace,),
          TextFormField(decoration: const InputDecoration(
            labelText: "Identification Mark *"
          ),)

        ],),

      )

    ],);
  }
}

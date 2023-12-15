import 'package:easy_education/features/enquiry/presentation/widgets/class_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/date_of_birth_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/gender_radio.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/parents_details.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  final _verSpace = .02;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText(text: "Student Details",),
        SizedBox(height: context.height*.01,),
        Container(
          decoration: context.customBoxDecoration,
          margin: EdgeInsets.symmetric(horizontal: context.width*.02,),
          padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Name *"),),
              SizedBox(height: context.height*_verSpace,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                SizedBox(width: context.width*.42,child: const ClassField(),),
                SizedBox(width:context.width*.42,child: const  DateOfBirthField(),)
              ],),
              SizedBox(height: context.height*_verSpace,),
              GenderRadio(),
              SizedBox(height: context.height*_verSpace,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Present Address *"),),
              SizedBox(height: context.height*_verSpace,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Permanent Address *"),),

              SizedBox(height: context.height*_verSpace,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "School Name *"),),
              SizedBox(height: context.height*_verSpace,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "School Address"),),

            ],
          ),
        ),
        SizedBox(height: context.height*_verSpace,),
        const ParentDetails()

    ],);
  }
}

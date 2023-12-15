import 'package:easy_education/features/enquiry/presentation/widgets/class_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/date_of_birth_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({super.key});

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  final double _verSpace = .02;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      const HeaderText(text: "Basic Details"),

      Container(
        decoration:context.customBoxDecoration,
        padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
        margin: EdgeInsets.symmetric(horizontal: context.width*.02,vertical: context.height*.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,))),
            SizedBox(height: context.height*.02,),
            TextFormField(decoration: const InputDecoration(
              labelText: " Name *",
              suffixIcon:  Icon(Icons.person)
            ),),
            SizedBox(height: context.height*_verSpace,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              SizedBox(width: context.width*.42,
               child: const ClassField(),),
              SizedBox(width: context.width*.42,
              child: const DateOfBirthField(),)
            ],),
            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Aadhar No. *",
                suffixIcon:  Icon(Icons.link)
            ),),

            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Father's Name *",
                suffixIcon:  Icon(Icons.person)
            ),),

            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Mother's Name *",
                suffixIcon:  Icon(Icons.person)
            ),),
            SizedBox(height: context.height*_verSpace,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: context.width*.42,
                child: TextFormField(decoration: const InputDecoration(
                   labelText: "Category *",
                    suffixIcon:  Icon(Icons.category)
                 ),),),
                SizedBox(width: context.width*.42,
                  child: TextFormField(decoration: const InputDecoration(
                      labelText: "Nationality *",
                      suffixIcon:  Icon(Icons.language)
                  ),),)

              ],
            ),

            SizedBox(height:context.height*_verSpace),
            TextFormField(decoration: const InputDecoration(
                labelText: "Previous School Name *",
                suffixIcon:  Icon(Icons.school)
            ),),






          ],),)
    ],);
  }
}

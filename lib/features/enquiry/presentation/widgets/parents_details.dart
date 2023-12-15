import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class ParentDetails extends StatelessWidget {
  const ParentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText(text: "Parent Details",),
        SizedBox(height: context.height*.01,),
        Container(
          decoration: context.customBoxDecoration,
          margin: EdgeInsets.symmetric(horizontal: context.width*.02,),
          padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Father's Name *"),),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Father's Occupation *"),),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Mother's Name *"),),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Mother's Occupation *"),),
            ],
          ),
        ),
      ],
    );
  }
}

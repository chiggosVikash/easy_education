import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  final double verSpace;
  const ContactDetails({super.key,required this.verSpace});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
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
                  isDense: true,labelText: "Phone No *"),),
            SizedBox(height: context.height*widget.verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Email *"),),
            SizedBox(height: context.height*widget.verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Father's Phone No *"),),
            SizedBox(height: context.height*widget.verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Father's Email "),),
            SizedBox(height: context.height*widget.verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Mother's Phone No "),),

            SizedBox(height: context.height*widget.verSpace,),
            TextFormField(
              decoration: const  InputDecoration(
                  isDense: true,labelText: "Mother's Email "),),


          ],
        ),
      ),

    ],);
  }
}

import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class OfficeUseDetails extends StatefulWidget {
  const OfficeUseDetails({super.key});

  @override
  State<OfficeUseDetails> createState() => _OfficeUseDetailsState();
}

class _OfficeUseDetailsState extends State<OfficeUseDetails> {
  final double _verSpace = .02;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: EdgeInsets.symmetric(horizontal: context.width*.02,vertical: context.height*.02),
      margin: EdgeInsets.only(left: context.width*.25,right:context.width*.02,top: context.height*.02,bottom: context.height*.02),
      decoration: context.customBoxDecoration,
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
            SizedBox(width: constraints.maxWidth*.74,
              child: TextFormField(decoration: const InputDecoration(
                labelText: "Form No *",
                suffixIcon: Icon(Icons.numbers)
              ),),
            ),
            SizedBox(height: context.height*_verSpace,),
            SizedBox(width: constraints.maxWidth*.74,
              child: TextFormField(decoration: const InputDecoration(
                  labelText: "Registration No *",
                  suffixIcon: Icon(Icons.numbers)
              ),),
            ),
            SizedBox(height: context.height*_verSpace,),

            SizedBox(width: constraints.maxWidth*.74,
              child: TextFormField(
                readOnly: true,
                onTap: (){
                  //TODO: Add date picker
                },
                decoration: const InputDecoration(
                  labelText: "Registration Date *",
                  suffixIcon: Icon(Icons.date_range)
              ),),
            ),




          ],);
        }
      ),);
  }
}

import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class PresentAddress extends StatefulWidget {
  const PresentAddress({super.key});

  @override
  State<PresentAddress> createState() => _PresentAddressState();
}

class _PresentAddressState extends State<PresentAddress> {
  final double _verSpace = .02;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText(text: "Present Address"),
        Container(
          decoration:context.customBoxDecoration,
          padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
          margin: EdgeInsets.symmetric(horizontal: context.width*.02,vertical: context.height*.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

            Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,),)),

            SizedBox(height: context.height*_verSpace,),
            TextFormField(decoration: const  InputDecoration(
              labelText: "Area *",suffixIcon: Icon(Icons.area_chart)
            ),),
            SizedBox(height: context.height*_verSpace,),
            TextFormField(decoration: const  InputDecoration(
                labelText: "Landmark*",suffixIcon: Icon(Icons.landscape)
            ),),

            SizedBox(height: context.height*_verSpace,),
            TextFormField(decoration: const InputDecoration(
              labelText: "City *",suffixIcon: Icon(Icons.abc)
            ),),
            SizedBox(height: context.height*_verSpace,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: context.width*.42,
                  child: TextFormField(decoration: const InputDecoration(
                      labelText: "State *",suffixIcon: Icon(Icons.abc)
                  ),),
                ),
                SizedBox(width: context.width*.42,
                  child: TextFormField(decoration: const InputDecoration(
                      labelText: "Pin Code *",suffixIcon: Icon(Icons.onetwothree)
                  ),),
                ),
              ],
            )


          ],),
        ),

    ],);
  }
}

import 'package:easy_education/utils/constants/constants.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class GenderRadio extends StatelessWidget {
   GenderRadio({super.key});

  String initialGenderVal = "";

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      Text("Select Gender *",style: TextStyle(
        fontSize:((context.height+context.width)*context.aspectRatio)*.022
      ),),
      SizedBox(height:context.height*.01),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(Constants.genders.length, (index) {
        return PhysicalModel(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          color:Theme.of(context).canvasColor,
          elevation: 2,
          child: SizedBox(width: (context.width*.82)/2,
           child : RadioListTile(
               contentPadding: EdgeInsets.zero,
               title: Text(Constants.genders[index]),
               value: Constants.genders[index], groupValue: initialGenderVal ,
               onChanged: (String? changedVal){
              initialGenderVal = changedVal!;
           })),
        );
      }),)
    ],);
  }
}

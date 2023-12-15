import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';

class StudentImage extends StatelessWidget {
  const StudentImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.height * .06, left: context.width * .02),
      height: context.height * .19,
      width: context.width * .38,
      decoration: BoxDecoration(
        color: context.theme.background,
        border: Border.all(color: context.theme.secondaryContainer, width: context.width*.01),
          borderRadius: BorderRadius.circular(context.width*.05),
      ),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(Icons.add, size: constraints.maxHeight*.3,color: context.theme.secondary,),
               Text("Add Image",
                style: TextStyle(fontSize: ((constraints.maxHeight+constraints.maxWidth)*context.aspectRatio)*.11),)
            ],
          );
        }
      ),
    );
  }
}

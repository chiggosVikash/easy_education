import 'package:easy_education/features/create_institute/presentation/widgets/create_button_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SchoolCreatedSuccessDialogW extends StatelessWidget {
  const SchoolCreatedSuccessDialogW({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AlertDialog(
        surfaceTintColor: context.theme.primary,
        title: Center(child: Container(margin: EdgeInsets.only( top: context.height*.03),
        child: Text("Successful !",
          style: GoogleFonts.cantataOne(color: context.theme.surfaceTint,
            height: .5),))),
        content: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.center,children: [
             Text("Your school has been created successfully .",style: TextStyle(color: context.theme.outline),),
             SizedBox(height: context.height*.005,),
             Text("Now create first/main branch of your school.",style: GoogleFonts.openSans(color: Colors.grey),)
        ]),
        actions: [
          FilledButton.tonal(onPressed: (){
            Navigator.of(context).pop();
          }, child: const Text("Cancel")),

            CreateButtonW(text: "Create Branch",onPressed: (){

            // Navigator.of(context)..pop()..pop()..push(CustomRoute(page:const  CreateBranch(), offset: const Offset(1, 1)));

          })
        ],
        ),

      Positioned(
        top:context.height/2.85,
        left: (context.width - (context.height*.07))/2,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal.shade300,width: 4),
            color: Colors.teal.shade100,
            shape: BoxShape.circle
          ),
          height: context.height*.07,width: context.height*.07,
          child: LayoutBuilder(
            builder: (context,constraints) {
              return Icon(Icons.done_all_rounded,color: context.theme.secondary,size: constraints.biggest.height*.7,);
            }
          ),),
      )


    ],);
  }
}
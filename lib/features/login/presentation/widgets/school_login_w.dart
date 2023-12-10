import 'package:easy_education/features/login/presentation/widgets/login_button_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SchoolLoginW extends ConsumerWidget {
  const SchoolLoginW({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).canvasColor
      ),
      padding: EdgeInsets.symmetric(horizontal: context.width*.04,vertical: context.height*.01),
      margin: EdgeInsets.symmetric(horizontal: context.width*.03),
      child: Column(children: [
         SizedBox(height: context.height*.02,),
      
         TextFormField(decoration: const InputDecoration(isDense: true,labelText: "School Code",suffixIcon: Icon(Icons.code),
         ),),
      
         SizedBox(height: context.height*.02,),
      
         TextFormField(decoration: const  InputDecoration(isDense: true, labelText: "Password",suffixIcon: Icon(Icons.lock_outlined)
          )),
      
         SizedBox(height: context.height*.15,),
      
         LoginButtonW(
          onTap: (){},
          height: context.height*.045, width: context.width*.4),
      
         SizedBox(height: context.height*.04,),
      
      
        ],),);
  }
}
import 'package:easy_education/features/create_institute/presentation/widgets/create_button_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';


class AddBranchDetailsW extends StatelessWidget {
  const AddBranchDetailsW({super.key});

  final double _verticalSpace = .02;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,),)),

          SizedBox(height: context.width*.02,),

          TextFormField(decoration: const InputDecoration(isDense: true,labelText: "Branch Name*",suffixIcon: Icon(Icons.abc)),),

          SizedBox(height: context.height*_verticalSpace,),

          TextFormField(decoration: const InputDecoration(isDense: true,labelText: "Branch Code*",suffixIcon: Icon(Icons.abc)),),

          SizedBox(height: context.height*_verticalSpace,),

          TextFormField(decoration: const InputDecoration(isDense: true,labelText: "Phone no.*",suffixIcon: Icon(Icons.phone)),),

          SizedBox(height: context.height*_verticalSpace,),

          TextFormField(decoration: const InputDecoration(isDense: true,labelText: "Address*",suffixIcon: Icon(Icons.home_outlined)),),

          SizedBox(height: context.height*.08,),

          Center(child: CreateButtonW(onPressed: (){}, text: "Create")),

          SizedBox(height: context.height*.05,),






    ],);
  }
}
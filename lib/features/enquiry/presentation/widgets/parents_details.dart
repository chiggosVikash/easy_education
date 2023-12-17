import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParentDetails extends ConsumerWidget {
  final TextEditingController _motherNameController;
  final TextEditingController _fatherNameController;
  final TextEditingController _fatherOccupationController;
  final TextEditingController _motherOccupationController;

  const ParentDetails({super.key,
    required TextEditingController motherNameController,
    required TextEditingController fatherNameController,
    required TextEditingController fatherOccupationController,
    required TextEditingController motherOccupationController,
  }) : _motherNameController = motherNameController,
        _fatherNameController = fatherNameController,
        _fatherOccupationController = fatherOccupationController,
        _motherOccupationController = motherOccupationController;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    isDense: true,labelText: "Father's Name *"),
                controller: _fatherNameController,
              ),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Father's Occupation *"),
                controller: _fatherOccupationController,
              ),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Mother's Name *"),
                controller: _motherNameController,
              ),
              SizedBox(height: context.height*.02,),
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Mother's Occupation *"),
                controller: _motherOccupationController,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

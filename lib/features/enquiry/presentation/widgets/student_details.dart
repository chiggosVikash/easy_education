import 'package:easy_education/features/enquiry/presentation/widgets/class_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/date_of_birth_field.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/gender_radio.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/header_text.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/parents_details.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/utils/extensions/gradient_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentDetails extends ConsumerWidget {
  final TextEditingController _nameController;
  final TextEditingController _presentAddressController;
  final TextEditingController _permanentAddressController;
  final TextEditingController _schoolNameController;

  final TextEditingController _motherNameController;
  final TextEditingController _fatherNameController;
  final TextEditingController _fatherOccupationController;
  final TextEditingController _motherOccupationController;


  const StudentDetails({super.key,
    required TextEditingController nameController,
    required TextEditingController presentAddressController,
    required TextEditingController permanentAddressController,
    required TextEditingController schoolNameController,
    required TextEditingController motherNameController,
    required TextEditingController fatherNameController,
    required TextEditingController fatherOccupationController,
    required TextEditingController motherOccupationController,

  }) : _nameController = nameController,
        _presentAddressController = presentAddressController,
        _permanentAddressController = permanentAddressController,
        _schoolNameController = schoolNameController,
        _motherNameController = motherNameController,
        _fatherNameController = fatherNameController,
        _fatherOccupationController = fatherOccupationController,
        _motherOccupationController = motherOccupationController;


  final _verSpace = .02;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText(text: "Student Details",),
        SizedBox(height: context.height*.01,),
        Container(
          decoration: context.customBoxDecoration,
          margin: EdgeInsets.symmetric(horizontal: context.width*.02,),
          padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// student name field
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Name *"),
                controller: _nameController,
              ),
              SizedBox(height: context.height*_verSpace,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                /// student class field
                SizedBox(width: context.width*.42,child: const ClassField(),),
                /// student dob
                SizedBox(width:context.width*.42,child: const  DateOfBirthField(),)
              ],),
              SizedBox(height: context.height*_verSpace,),
              /// student gender
              const GenderRadio(),
              SizedBox(height: context.height*_verSpace,),
              /// student present address
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Present Address *"),
                controller: _presentAddressController,
              ),
              SizedBox(height: context.height*_verSpace,),
              /// student permanent address
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "Permanent Address *"),
                controller: _permanentAddressController,
              ),

              SizedBox(height: context.height*_verSpace,),
              /// student school name
              TextFormField(
                decoration: const  InputDecoration(
                    isDense: true,labelText: "School Name *"),
                controller: _schoolNameController,
              ),
              // SizedBox(height: context.height*_verSpace,),
              // /// student school address
              // TextFormField(
              //   decoration: const  InputDecoration(
              //       isDense: true,labelText: "School Address"),),

            ],
          ),
        ),
        SizedBox(height: context.height*_verSpace,),
        ParentDetails(motherNameController: _motherNameController,
          fatherNameController: _fatherNameController,
          fatherOccupationController: _fatherOccupationController,
          motherOccupationController: _motherOccupationController,
        )

    ],);
  }
}

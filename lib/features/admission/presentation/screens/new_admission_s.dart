import 'package:easy_education/features/admission/presentation/widgets/basic_details.dart';
import 'package:easy_education/features/admission/presentation/widgets/medical_info.dart';
import 'package:easy_education/features/admission/presentation/widgets/office_use_details.dart';
import 'package:easy_education/features/admission/presentation/widgets/present_address.dart';
import 'package:easy_education/features/admission/presentation/widgets/student_image.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class NewAdmission extends StatefulWidget {
  static const routeAddress = "/newAdmission";
  const NewAdmission({super.key});

  @override
  State<NewAdmission> createState() => _NewAdmissionState();
}

class _NewAdmissionState extends State<NewAdmission> {
  final double _verSpace  =.02;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Admission"),
      ),
      body: Container(
        color: context.theme.secondaryContainer.withOpacity(.3),
        child: ListView(children: [
         const  Stack(children: [
            OfficeUseDetails(),
            StudentImage(),
          ],),
          const BasicDetails(),
          SizedBox(height: context.height*_verSpace,),
          const PresentAddress(),
          SizedBox(height: context.height*_verSpace,),
          MedicalInfo(verSpace: _verSpace),
          SizedBox(height: context.height*.1,)
        ],),
      ),);
  }
}

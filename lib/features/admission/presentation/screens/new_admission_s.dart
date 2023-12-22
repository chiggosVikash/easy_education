import 'package:easy_education/features/admission/presentation/widgets/basic_details.dart';
import 'package:easy_education/features/admission/presentation/widgets/documents_info_w.dart';
import 'package:easy_education/features/admission/presentation/widgets/medical_info.dart';
import 'package:easy_education/features/admission/presentation/widgets/office_use_details.dart';
import 'package:easy_education/features/admission/presentation/widgets/present_address.dart';
import 'package:easy_education/features/admission/presentation/widgets/student_image.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
class NewAdmissionArgs{
  final EnquiryModel? enquiryModel;
  const NewAdmissionArgs({this.enquiryModel});
}

class NewAdmissionS extends StatefulWidget {
  static const routeAddress = "/newAdmission";
  final NewAdmissionArgs _args;
  const NewAdmissionS({super.key,required NewAdmissionArgs args}):_args = args;

  @override
  State<NewAdmissionS> createState() => _NewAdmissionSState();
}

class _NewAdmissionSState extends State<NewAdmissionS> {
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
          SizedBox(height: context.height*_verSpace,),
          const DocumentInfoW(),
          // const PresentAddress(),
          SizedBox(height: context.height*_verSpace,),
          MedicalInfo(verSpace: _verSpace),
          SizedBox(height: context.height*.1,)
        ],),
      ),);
  }
}

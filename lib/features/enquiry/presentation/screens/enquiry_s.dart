
import 'package:easy_education/features/create_institute/presentation/widgets/create_button_w.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/contact_details.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/student_details.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EnquiryS extends ConsumerStatefulWidget{
  static const routeAddress = "/enquiry";
  const EnquiryS({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EnquirySState();

}

class _EnquirySState extends ConsumerState<EnquiryS>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enquiry"),
      ),
      body:  Container(
        color: context.theme.secondaryContainer.withOpacity(.3),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StudentDetails(),
              SizedBox(height: context.height*.02,),
              const  ContactDetails(verSpace: .02),
              SizedBox(height: context.height*.05,),
              Center(child: CreateButtonW(onPressed: (){}, text: "Save")),
              SizedBox(height: context.height*.1,),
            ],
          ),
        ),
      ),
    );
  }
}
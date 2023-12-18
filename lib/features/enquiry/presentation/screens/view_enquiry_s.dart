import 'package:easy_education/features/enquiry/presentation/providers/get_enquries_p.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/view_enquiry/admission_vs_enquiry_graph_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/view_enquiry/enquiry_w.dart';

class ViewEnquiryS extends ConsumerStatefulWidget{
  static const routeAddress = "/view_enquiry";
  const ViewEnquiryS({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewEnquirySState();

}

class _ViewEnquirySState extends ConsumerState<ViewEnquiryS>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("View-Enquiry"),),
      body: Consumer(builder: (context, ref, child) {
        final enquiriesData = ref.watch(getEnquiryProvider);
        return  enquiriesData.when(data: (enquiries){
          return Column(children: [
            AdmissionVsEnquiryGraphW(
              admissionDoneEnquiry: enquiries.where((element) => element.isAdmissionDone == true).toList(),
              admissionNotDoneEnquiry: enquiries.where((element) => element.isAdmissionDone != true).toList(),
            ),
            EnquiryW(enquiries: enquiries,),
          ],);
        },
            error: (e,st)=> Center(child: Text("Error $e"),
            ),
            loading: ()=> const Center(
              child:RepaintBoundary(
                child: CircularProgressIndicator(),
            ),
            ),
        );

        },)
    );
  }

}


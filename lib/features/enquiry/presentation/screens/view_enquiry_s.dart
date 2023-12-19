import 'package:easy_education/features/enquiry/presentation/providers/get_enquries_p.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/view_enquiry/admission_vs_enquiry_graph_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/get_last_30_days_enqueries_p.dart';
import '../widgets/view_enquiry/enquiry_w.dart';

class ViewEnquiryS extends ConsumerStatefulWidget{
  static const routeAddress = "/view_enquiry";
  const ViewEnquiryS({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewEnquirySState();

}

class _ViewEnquirySState extends ConsumerState<ViewEnquiryS>{
  final int _fetchLimit = 7;

  @override
  void initState(){
    super.initState();
    Future(() async{
      await ref.read(getEnquiryProvider.notifier).getEnquiries(isRefresh: true,limit: _fetchLimit);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("View-Enquiry"),),
      body: Column(children: [
            Consumer(builder: (context, ref, child) {
              final enquiries = ref.watch(getLast30DaysEnquiriesProvider);
              if(enquiries is AsyncError){
                return const Text("Error");
              }else if (enquiries is AsyncLoading) {
                return const SizedBox();
              }
              final chartData = ref.watch(getLast30DaysEnquiriesProvider.notifier).getEnquiryVsAdmissionChartData();
              return AdmissionVsEnquiryGraphW(
              admissionDoneEnquiry: chartData.$1,
              admissionNotDoneEnquiry: chartData.$2,
            ); },),
            SizedBox(
              height: context.height*.55,
              child: Consumer(builder: (context, ref, child) {
                final enquiriesData = ref.watch(getEnquiryProvider);
                return enquiriesData.when(data: (enquiries){
                  return EnquiryW(enquiries: enquiries,
                    fetchLimit: _fetchLimit,
                  );
                }, error: (e,st)=> Center(child: Text("Error $e"),),
                    loading: ()=> const Center(child: RepaintBoundary(child: CircularProgressIndicator(),
                      ),
                    ),
                );
                },),
            ),

          ]),


    );
  }

}


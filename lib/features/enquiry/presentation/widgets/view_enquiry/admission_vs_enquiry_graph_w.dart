import 'package:easy_education/utils/extensions/date_format_extension.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../data/models/enquiry_model.dart';
class AdmissionVsEnquiryGraphW extends ConsumerWidget{
  final List<EnquiryModel> _admissionDoneEnquiry;
  final List<EnquiryModel> _admissionNotDoneEnquiry;
  const AdmissionVsEnquiryGraphW({super.key,required List<EnquiryModel> admissionDoneEnquiry,
    required List<EnquiryModel> admissionNotDoneEnquiry})
      :
        _admissionDoneEnquiry = admissionDoneEnquiry,
        _admissionNotDoneEnquiry = admissionNotDoneEnquiry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: context.height*.25,
      width: double.infinity,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series:[
          FastLineSeries<EnquiryModel,String>(
            dataSource: _admissionNotDoneEnquiry,
            xValueMapper: (EnquiryModel enquiry,_)=> enquiry.createdDate.formattedDate,
            yValueMapper: (EnquiryModel enquiry,_)=> enquiry.id,
            name: "Admission Not Done",
            color: Colors.red,
        ),
      ]

      )


    );
  }


}


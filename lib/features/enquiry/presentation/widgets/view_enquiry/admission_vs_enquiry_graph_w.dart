import 'package:easy_education/features/enquiry/data/models/enquiry_vs_admission_chat_data_model.dart';
import 'package:easy_education/utils/extensions/date_format_extension.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class AdmissionVsEnquiryGraphW extends ConsumerWidget{
  final Map<String,EnquiryVsAdmissionChartDataModel> _admissionDoneEnquiry;
  final Map<String,EnquiryVsAdmissionChartDataModel> _admissionNotDoneEnquiry;
  const AdmissionVsEnquiryGraphW({super.key,
    required Map<String,EnquiryVsAdmissionChartDataModel> admissionDoneEnquiry,
    required Map<String,EnquiryVsAdmissionChartDataModel> admissionNotDoneEnquiry,
  })
      :
        _admissionDoneEnquiry = admissionDoneEnquiry,
        _admissionNotDoneEnquiry = admissionNotDoneEnquiry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: context.height*.30,
      width: double.infinity,
      child: SfCartesianChart(
        title: ChartTitle(text: "Admission Vs Enquiry in 30 days"),
        primaryXAxis: CategoryAxis(),
        series:[
        if(_admissionNotDoneEnquiry.isNotEmpty)
          FastLineSeries<EnquiryVsAdmissionChartDataModel,String>(
            dataSource: _admissionNotDoneEnquiry.values.toList(),
            xValueMapper: (EnquiryVsAdmissionChartDataModel enquiry,_)=> enquiry.date.formattedDate,
            yValueMapper: (EnquiryVsAdmissionChartDataModel enquiry,_)=> enquiry.count,
            name: "Admission Not Done",
            color: Colors.red,
        ),

        if(_admissionDoneEnquiry.isNotEmpty)
          FastLineSeries<EnquiryVsAdmissionChartDataModel,String>(
            dataSource: _admissionDoneEnquiry.values.toList(),
            xValueMapper: (EnquiryVsAdmissionChartDataModel enquiry,_)=> enquiry.date.formattedDate,
            yValueMapper: (EnquiryVsAdmissionChartDataModel enquiry,_)=> enquiry.count,
            name: "Admission Done",
            color: Colors.red,
          ),
      ]

      )


    );
  }


}


import 'package:easy_education/utils/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/enquiry_model.dart';

class EnquiryW extends ConsumerWidget{
  final List<EnquiryModel> _enquiries;
  const EnquiryW({super.key,required List<EnquiryModel> enquiries}):_enquiries = enquiries;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: _enquiries.length,
        itemBuilder: (context,index){
      return Card(
        child: ListTile(
          title: Text(_enquiries[index].studentDetails.fullName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${_enquiries[index].studentDetails.currentClass}, - ${_enquiries[index].studentDetails.fatherName}"),
              Text("Date - ${_enquiries[index].createdDate.formattedDate}")
            ],
          ),
          isThreeLine: true,

          trailing: FilledButton.tonal(onPressed: (){}, child: const Text("Admission")),
        ),
      );
    });

  }

}

import 'package:easy_education/features/enquiry/presentation/providers/add_enquiry_p.dart';
import 'package:easy_education/utils/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DateOfBirthField extends ConsumerWidget {
  const DateOfBirthField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(readOnly: true,
      controller: TextEditingController(
        text: ref.watch(
          addEnquiryProvider.select((value) => value.studentDetails.dob.formattedDate),
        ),
      ),
      decoration: const InputDecoration(
          isDense: true, labelText: "Date of Birth *"),
      onTap: () {
        _selectDate(context, ref);
      },);
  }

  Future<void> _selectDate(BuildContext context, WidgetRef ref) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime
            .now()
            .year - 18),
        firstDate: DateTime(1900),
        lastDate: DateTime(DateTime
            .now()
            .year));

    if (picked != null) {
      ref.read(addEnquiryProvider.notifier).addDob(picked.toIso8601String());
    }
  }
}

import 'package:easy_education/features/enquiry/presentation/providers/add_enquiry_p.dart';
import 'package:easy_education/features/master_setting/presentation/providers/get_settings_provider_g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassField extends ConsumerWidget {
  const ClassField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(getSettingsProvider);
    return DropdownButtonFormField(
      decoration: const InputDecoration(
            isDense: true, labelText: "Class *",),
        items: List.generate(classes.value?.length ?? 0, (index) {
      return DropdownMenuItem(
        value: classes.value![index].name,
        child: Text(classes.value![index].name ),
      );
    }), onChanged: (changedVal){
      ref.read(addEnquiryProvider.notifier).addClassOrBatch(changedVal!);
    });
  }
}

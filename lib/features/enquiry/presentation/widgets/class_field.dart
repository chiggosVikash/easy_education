import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassField extends ConsumerWidget {
  const ClassField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
            isDense: true, labelText: "Class *",),
        items: List.generate(4, (index) {
      return DropdownMenuItem(
        value: index + 1,
        child: Text("Class ${index + 1}"),
      );
    }), onChanged: (changedVal){
      //TODO: Add logic
    });
  }
}

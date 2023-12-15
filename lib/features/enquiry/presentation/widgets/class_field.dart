import 'package:flutter/material.dart';

class ClassField extends StatelessWidget {
  const ClassField({super.key});

  @override
  Widget build(BuildContext context) {
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

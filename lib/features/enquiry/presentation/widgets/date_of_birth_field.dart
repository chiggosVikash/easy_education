import 'package:flutter/material.dart';

class DateOfBirthField extends StatelessWidget {
  const DateOfBirthField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(readOnly: true,
     decoration: const InputDecoration(
          isDense: true, labelText: "Date of Birth *"),
     onTap: (){
      //TODO: Open Date Picker
     },);
  }
}

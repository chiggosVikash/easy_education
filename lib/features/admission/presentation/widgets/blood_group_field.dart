import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';

class BloodGroupField extends StatelessWidget {
   BloodGroupField({super.key});

  String _initialBloodGrp = "A+";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        labelText: "Blood Group"
      ),
        value: _initialBloodGrp,items: List.generate(Constants.bloodGroup.length, (index) {
      return DropdownMenuItem(value:Constants.bloodGroup[index] ,child: Text(Constants.bloodGroup[index]));
    }), onChanged: (value){
      // TODO: Add logic
    });
  }
}

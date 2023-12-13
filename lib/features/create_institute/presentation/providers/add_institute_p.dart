
import 'dart:io';

import 'package:easy_education/features/create_institute/data/models/institute_model.dart';
import 'package:easy_education/features/create_institute/presentation/providers/save_institute_p.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addInstituteProvider = NotifierProvider<AddInstituteP,InstituteModel>(()=>AddInstituteP());

class AddInstituteP extends Notifier<InstituteModel>{
  @override
  InstituteModel build() {
    return InstituteModel(createdDate: DateTime.now().toIso8601String(),
      updatedDate: "",
      name: "",
      email: "",
      phone: "",
      address: "",
    );
  }

  void addEmail(String email){
    state = state.copyWith(email: email);
  }

  void addImageFile(File imageFile){
    state = state.copyWith(imageFile: imageFile);
  }

  void assignFields({required String name,required String phone,required String address,
    required String registrationNo,
  }){
    state = state.copyWith(name: name,phone: phone,address: address,
    registrationNumber: registrationNo
    );
  }
  
  void saveInstitute(){
    ref.read(saveInstituteProvider.notifier).saveInstitute(institute: state);
  }

}
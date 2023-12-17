

import 'package:easy_education/features/enquiry/data/models/contact_details_model.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/data/models/student_details_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addEnquiryProvider = NotifierProvider<AddEnquiryP, EnquiryModel>(() => AddEnquiryP());

class AddEnquiryP extends Notifier<EnquiryModel>{
  @override
  EnquiryModel build() {
    return EnquiryModel(id: DateTime.now().millisecondsSinceEpoch,
        createdDate: DateTime.now().toIso8601String(),
        updatedDate: "",
        studentDetails: StudentDetailsModel(fullName: '',
            dob: '',
            gender: '',
            tempAddress: '',
            permAddress: '',
            motherName: '',
            fatherName: '',
            currentSchool: '',
            currentClass: ''
        ),
        contactDetails: ContactDetailsModel(
            phone: '',
            email: '',
            ),
    );
  }

  void addGender(String gender){
    state = state.copyWith(
        studentDetails: state.studentDetails.copyWith(
            gender: gender,
        ),
    );
  }

  void addDob(String dob){
    state = state.copyWith(
        studentDetails: state.studentDetails.copyWith(
            dob: dob,
        ),
    );
  }
  void addClassOrBatch(String classOrBatch){
    state = state.copyWith(
        studentDetails: state.studentDetails.copyWith(
            currentClass: classOrBatch,
        ),
    );
  }

  void assignFields(String fullName,
      String tempAddress,
      String permAddress,
      String motherName,
      String fatherName,
      String currentSchool,
      String phone,
      String email,
      String fatherEmail,
      String motherEmail,
      String fatherPhone,
      String motherPhone

      ){
    state = state.copyWith(
        studentDetails: state.studentDetails.copyWith(
            fullName: fullName,
            tempAddress: tempAddress,
            permAddress: permAddress,
            motherName: motherName,
            fatherName: fatherName,
            currentSchool: currentSchool,
        ),
      contactDetails: state.contactDetails.copyWith(
          phone: phone,
          email: email,
          fatherEmail: fatherEmail,
          motherEmail: motherEmail,
          fatherPhone: fatherPhone,
          motherPhone: motherPhone,

      ),
    );
  }

}
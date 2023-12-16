

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

}
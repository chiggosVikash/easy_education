
import 'package:easy_education/features/admission/presentation/widgets/medical_info.dart';
import 'package:easy_education/features/enquiry/data/models/student_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'medical_info_model.dart';
part 'admission_model.freezed.dart';
part 'admission_model.g.dart';

@freezed
class AdmissionModel with _$AdmissionModel{
  factory AdmissionModel({
    required int admissionYear,
    required String formNo,
    required String registrationNo,
    required String registrationDate,
    String? imageUrl,
    /// basic details
    required StudentDetailsModel studentDetails,
    required MedicalInfoModel medicalInfo,

  }) = _AdmissionModel;

    factory AdmissionModel.fromJson(Map<String, dynamic> json) => _$AdmissionModelFromJson(json);
}
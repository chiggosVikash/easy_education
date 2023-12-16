
import 'package:freezed_annotation/freezed_annotation.dart';
part 'student_details_model.freezed.dart';
part 'student_details_model.g.dart';
@freezed
class StudentDetailsModel with _$StudentDetailsModel{

  factory StudentDetailsModel({required String fullName,
    required String dob,
    required String gender,
    required String tempAddress,
    required String permAddress,
    required String motherName,
    String? motherOccupation,
    required String fatherName, 
    String? fatherOccupation,
    required String currentSchool,
    String? schoolAddress,
    required String currentClass,
  }) = _StudentDetailsModel;

  factory StudentDetailsModel.fromJson(Map<String, dynamic> json) => _$StudentDetailsModelFromJson(json);
}

import 'package:easy_education/features/enquiry/data/models/contact_details_model.dart';
import 'package:easy_education/features/enquiry/data/models/student_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'enquiry_model.freezed.dart';
part 'enquiry_model.g.dart';
@freezed
class EnquiryModel with _$EnquiryModel{
  EnquiryModel._();

  factory EnquiryModel({
    required int id,
    required String createdDate,
    required String updatedDate,
    @Default(false)
    bool? isAdmissionDone,
    required StudentDetailsModel studentDetails,
    required ContactDetailsModel contactDetails,
  }) = _EnquiryModel;

  factory EnquiryModel.fromJson(Map<String, dynamic> json) => _$EnquiryModelFromJson(json);
}
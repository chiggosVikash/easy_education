
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_details_model.freezed.dart';
part 'contact_details_model.g.dart';

@freezed
class ContactDetailsModel with _$ContactDetailsModel{

  ContactDetailsModel._();

  factory ContactDetailsModel({
    required String phone,
    required String email,
    String? fatherPhone,
    String? fatherEmail,
    String? motherEmail,
    String? motherPhone,

}) = _ContactDetailsModel;

  factory ContactDetailsModel.fromJson(Map<String, dynamic> json) => _$ContactDetailsModelFromJson(json);
}
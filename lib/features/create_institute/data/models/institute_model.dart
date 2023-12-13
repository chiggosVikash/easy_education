
import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'institute_model.freezed.dart';
part 'institute_model.g.dart';
@freezed
class InstituteModel with _$InstituteModel{

  // InstituteModel._();

  factory InstituteModel({
  String? logoUrl,
  required String createdDate,
  required String updatedDate,
  required String name,
  required String email,
  required String phone,
  required String address,
    @Default(null)
    @JsonKey(includeFromJson: false, includeToJson: false)
    File? imageFile,
    @Default(true)
    bool isActive,
    String? registrationNumber,
}) = _InstituteModel;

  factory InstituteModel.fromJson(Map<String, dynamic> json) => _$InstituteModelFromJson(json);

}



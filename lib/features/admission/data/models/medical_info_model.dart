
import 'package:freezed_annotation/freezed_annotation.dart';
part 'medical_info_model.freezed.dart';
part 'medical_info_model.g.dart';
@freezed
class MedicalInfoModel with _$MedicalInfoModel{
  factory MedicalInfoModel ({
    required String bloodGroup,
    required String identificationMark,
  }) = _MedicalInfoModel;

  factory MedicalInfoModel.fromJson(Map<String, dynamic> json) => _$MedicalInfoModelFromJson(json);
}
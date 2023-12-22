// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdmissionModelImpl _$$AdmissionModelImplFromJson(Map<String, dynamic> json) =>
    _$AdmissionModelImpl(
      formNo: json['formNo'] as String,
      registrationNo: json['registrationNo'] as String,
      registrationDate: json['registrationDate'] as String,
      imageUrl: json['imageUrl'] as String?,
      studentDetails: StudentDetailsModel.fromJson(
          json['studentDetails'] as Map<String, dynamic>),
      medicalInfo: MedicalInfoModel.fromJson(
          json['medicalInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdmissionModelImplToJson(
        _$AdmissionModelImpl instance) =>
    <String, dynamic>{
      'formNo': instance.formNo,
      'registrationNo': instance.registrationNo,
      'registrationDate': instance.registrationDate,
      'imageUrl': instance.imageUrl,
      'studentDetails': instance.studentDetails,
      'medicalInfo': instance.medicalInfo,
    };

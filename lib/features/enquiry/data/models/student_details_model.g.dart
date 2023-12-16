// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDetailsModelImpl _$$StudentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentDetailsModelImpl(
      fullName: json['fullName'] as String,
      dob: json['dob'] as String,
      gender: json['gender'] as String,
      tempAddress: json['tempAddress'] as String,
      permAddress: json['permAddress'] as String,
      motherName: json['motherName'] as String,
      motherOccupation: json['motherOccupation'] as String?,
      fatherName: json['fatherName'] as String,
      fatherOccupation: json['fatherOccupation'] as String?,
      currentSchool: json['currentSchool'] as String,
      schoolAddress: json['schoolAddress'] as String?,
      currentClass: json['currentClass'] as String,
    );

Map<String, dynamic> _$$StudentDetailsModelImplToJson(
        _$StudentDetailsModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'dob': instance.dob,
      'gender': instance.gender,
      'tempAddress': instance.tempAddress,
      'permAddress': instance.permAddress,
      'motherName': instance.motherName,
      'motherOccupation': instance.motherOccupation,
      'fatherName': instance.fatherName,
      'fatherOccupation': instance.fatherOccupation,
      'currentSchool': instance.currentSchool,
      'schoolAddress': instance.schoolAddress,
      'currentClass': instance.currentClass,
    };

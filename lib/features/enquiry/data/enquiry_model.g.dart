// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquiry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnquiryModelImpl _$$EnquiryModelImplFromJson(Map<String, dynamic> json) =>
    _$EnquiryModelImpl(
      studentDetails: StudentDetailsModel.fromJson(
          json['studentDetails'] as Map<String, dynamic>),
      contactDetails: ContactDetailsModel.fromJson(
          json['contactDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquiryModelImplToJson(_$EnquiryModelImpl instance) =>
    <String, dynamic>{
      'studentDetails': instance.studentDetails,
      'contactDetails': instance.contactDetails,
    };

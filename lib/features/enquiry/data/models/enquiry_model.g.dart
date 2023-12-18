// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquiry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnquiryModelImpl _$$EnquiryModelImplFromJson(Map<String, dynamic> json) =>
    _$EnquiryModelImpl(
      id: json['id'] as int,
      createdDate: json['createdDate'] as String,
      updatedDate: json['updatedDate'] as String,
      isAdmissionDone: json['isAdmissionDone'] as bool? ?? false,
      studentDetails: StudentDetailsModel.fromJson(
          json['studentDetails'] as Map<String, dynamic>),
      contactDetails: ContactDetailsModel.fromJson(
          json['contactDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquiryModelImplToJson(_$EnquiryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate,
      'updatedDate': instance.updatedDate,
      'isAdmissionDone': instance.isAdmissionDone,
      'studentDetails': instance.studentDetails,
      'contactDetails': instance.contactDetails,
    };

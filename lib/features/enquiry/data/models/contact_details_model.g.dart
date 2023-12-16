// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDetailsModelImpl _$$ContactDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsModelImpl(
      phone: json['phone'] as String,
      email: json['email'] as String,
      fatherPhone: json['fatherPhone'] as String?,
      fatherEmail: json['fatherEmail'] as String?,
      motherEmail: json['motherEmail'] as String?,
      motherPhone: json['motherPhone'] as String?,
    );

Map<String, dynamic> _$$ContactDetailsModelImplToJson(
        _$ContactDetailsModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'fatherPhone': instance.fatherPhone,
      'fatherEmail': instance.fatherEmail,
      'motherEmail': instance.motherEmail,
      'motherPhone': instance.motherPhone,
    };

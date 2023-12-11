// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstituteModelImpl _$$InstituteModelImplFromJson(Map<String, dynamic> json) =>
    _$InstituteModelImpl(
      logoUrl: json['logoUrl'] as String?,
      createdDate: json['createdDate'] as String,
      updatedDate: json['updatedDate'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      isActive: json['isActive'] as bool? ?? true,
      registrationNumber: json['registrationNumber'] as String?,
    );

Map<String, dynamic> _$$InstituteModelImplToJson(
        _$InstituteModelImpl instance) =>
    <String, dynamic>{
      'logoUrl': instance.logoUrl,
      'createdDate': instance.createdDate,
      'updatedDate': instance.updatedDate,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'isActive': instance.isActive,
      'registrationNumber': instance.registrationNumber,
    };

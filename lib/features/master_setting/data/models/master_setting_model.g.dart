// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterSettingModelImpl _$$MasterSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MasterSettingModelImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      classOrBatch_: json['classOrBatch_'] as String? ?? "",
      type: json['type'] as String,
    );

Map<String, dynamic> _$$MasterSettingModelImplToJson(
        _$MasterSettingModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'classOrBatch_': instance.classOrBatch_,
      'type': instance.type,
    };

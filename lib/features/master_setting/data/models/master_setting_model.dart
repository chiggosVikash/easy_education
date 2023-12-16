

import 'package:freezed_annotation/freezed_annotation.dart';
part 'master_setting_model.freezed.dart';
part 'master_setting_model.g.dart';

@freezed
class MasterSettingModel with _$MasterSettingModel{
  factory MasterSettingModel({
   required String name,
    required String date,
    @Default("")
    String? classOrBatch_,
    required String type,
    @JsonKey(includeToJson: false,includeFromJson: false)
    bool? isSelected

  }) = _MasterSettingModel;

  factory MasterSettingModel.fromJson(Map<String, dynamic> json) => _$MasterSettingModelFromJson(json);
}
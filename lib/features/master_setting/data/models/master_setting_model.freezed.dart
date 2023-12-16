// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterSettingModel _$MasterSettingModelFromJson(Map<String, dynamic> json) {
  return _MasterSettingModel.fromJson(json);
}

/// @nodoc
mixin _$MasterSettingModel {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get classOrBatch_ => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterSettingModelCopyWith<MasterSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterSettingModelCopyWith<$Res> {
  factory $MasterSettingModelCopyWith(
          MasterSettingModel value, $Res Function(MasterSettingModel) then) =
      _$MasterSettingModelCopyWithImpl<$Res, MasterSettingModel>;
  @useResult
  $Res call(
      {String name,
      String date,
      String? classOrBatch_,
      String type,
      @JsonKey(includeToJson: false, includeFromJson: false) bool? isSelected});
}

/// @nodoc
class _$MasterSettingModelCopyWithImpl<$Res, $Val extends MasterSettingModel>
    implements $MasterSettingModelCopyWith<$Res> {
  _$MasterSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? classOrBatch_ = freezed,
    Object? type = null,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      classOrBatch_: freezed == classOrBatch_
          ? _value.classOrBatch_
          : classOrBatch_ // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterSettingModelImplCopyWith<$Res>
    implements $MasterSettingModelCopyWith<$Res> {
  factory _$$MasterSettingModelImplCopyWith(_$MasterSettingModelImpl value,
          $Res Function(_$MasterSettingModelImpl) then) =
      __$$MasterSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String date,
      String? classOrBatch_,
      String type,
      @JsonKey(includeToJson: false, includeFromJson: false) bool? isSelected});
}

/// @nodoc
class __$$MasterSettingModelImplCopyWithImpl<$Res>
    extends _$MasterSettingModelCopyWithImpl<$Res, _$MasterSettingModelImpl>
    implements _$$MasterSettingModelImplCopyWith<$Res> {
  __$$MasterSettingModelImplCopyWithImpl(_$MasterSettingModelImpl _value,
      $Res Function(_$MasterSettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? classOrBatch_ = freezed,
    Object? type = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$MasterSettingModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      classOrBatch_: freezed == classOrBatch_
          ? _value.classOrBatch_
          : classOrBatch_ // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MasterSettingModelImpl implements _MasterSettingModel {
  _$MasterSettingModelImpl(
      {required this.name,
      required this.date,
      this.classOrBatch_ = "",
      required this.type,
      @JsonKey(includeToJson: false, includeFromJson: false) this.isSelected});

  factory _$MasterSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasterSettingModelImplFromJson(json);

  @override
  final String name;
  @override
  final String date;
  @override
  @JsonKey()
  final String? classOrBatch_;
  @override
  final String type;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final bool? isSelected;

  @override
  String toString() {
    return 'MasterSettingModel(name: $name, date: $date, classOrBatch_: $classOrBatch_, type: $type, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterSettingModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.classOrBatch_, classOrBatch_) ||
                other.classOrBatch_ == classOrBatch_) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, date, classOrBatch_, type, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterSettingModelImplCopyWith<_$MasterSettingModelImpl> get copyWith =>
      __$$MasterSettingModelImplCopyWithImpl<_$MasterSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterSettingModelImplToJson(
      this,
    );
  }
}

abstract class _MasterSettingModel implements MasterSettingModel {
  factory _MasterSettingModel(
      {required final String name,
      required final String date,
      final String? classOrBatch_,
      required final String type,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final bool? isSelected}) = _$MasterSettingModelImpl;

  factory _MasterSettingModel.fromJson(Map<String, dynamic> json) =
      _$MasterSettingModelImpl.fromJson;

  @override
  String get name;
  @override
  String get date;
  @override
  String? get classOrBatch_;
  @override
  String get type;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$MasterSettingModelImplCopyWith<_$MasterSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

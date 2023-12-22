// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalInfoModel _$MedicalInfoModelFromJson(Map<String, dynamic> json) {
  return _MedicalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalInfoModel {
  String get bloodGroup => throw _privateConstructorUsedError;
  String get identificationMark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalInfoModelCopyWith<MedicalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalInfoModelCopyWith<$Res> {
  factory $MedicalInfoModelCopyWith(
          MedicalInfoModel value, $Res Function(MedicalInfoModel) then) =
      _$MedicalInfoModelCopyWithImpl<$Res, MedicalInfoModel>;
  @useResult
  $Res call({String bloodGroup, String identificationMark});
}

/// @nodoc
class _$MedicalInfoModelCopyWithImpl<$Res, $Val extends MedicalInfoModel>
    implements $MedicalInfoModelCopyWith<$Res> {
  _$MedicalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
    Object? identificationMark = null,
  }) {
    return _then(_value.copyWith(
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      identificationMark: null == identificationMark
          ? _value.identificationMark
          : identificationMark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalInfoModelImplCopyWith<$Res>
    implements $MedicalInfoModelCopyWith<$Res> {
  factory _$$MedicalInfoModelImplCopyWith(_$MedicalInfoModelImpl value,
          $Res Function(_$MedicalInfoModelImpl) then) =
      __$$MedicalInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bloodGroup, String identificationMark});
}

/// @nodoc
class __$$MedicalInfoModelImplCopyWithImpl<$Res>
    extends _$MedicalInfoModelCopyWithImpl<$Res, _$MedicalInfoModelImpl>
    implements _$$MedicalInfoModelImplCopyWith<$Res> {
  __$$MedicalInfoModelImplCopyWithImpl(_$MedicalInfoModelImpl _value,
      $Res Function(_$MedicalInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
    Object? identificationMark = null,
  }) {
    return _then(_$MedicalInfoModelImpl(
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      identificationMark: null == identificationMark
          ? _value.identificationMark
          : identificationMark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalInfoModelImpl implements _MedicalInfoModel {
  _$MedicalInfoModelImpl(
      {required this.bloodGroup, required this.identificationMark});

  factory _$MedicalInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalInfoModelImplFromJson(json);

  @override
  final String bloodGroup;
  @override
  final String identificationMark;

  @override
  String toString() {
    return 'MedicalInfoModel(bloodGroup: $bloodGroup, identificationMark: $identificationMark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalInfoModelImpl &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.identificationMark, identificationMark) ||
                other.identificationMark == identificationMark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bloodGroup, identificationMark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalInfoModelImplCopyWith<_$MedicalInfoModelImpl> get copyWith =>
      __$$MedicalInfoModelImplCopyWithImpl<_$MedicalInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MedicalInfoModel implements MedicalInfoModel {
  factory _MedicalInfoModel(
      {required final String bloodGroup,
      required final String identificationMark}) = _$MedicalInfoModelImpl;

  factory _MedicalInfoModel.fromJson(Map<String, dynamic> json) =
      _$MedicalInfoModelImpl.fromJson;

  @override
  String get bloodGroup;
  @override
  String get identificationMark;
  @override
  @JsonKey(ignore: true)
  _$$MedicalInfoModelImplCopyWith<_$MedicalInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

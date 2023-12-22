// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdmissionModel _$AdmissionModelFromJson(Map<String, dynamic> json) {
  return _AdmissionModel.fromJson(json);
}

/// @nodoc
mixin _$AdmissionModel {
  String get formNo => throw _privateConstructorUsedError;
  String get registrationNo => throw _privateConstructorUsedError;
  String get registrationDate => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// basic details
  StudentDetailsModel get studentDetails => throw _privateConstructorUsedError;
  MedicalInfoModel get medicalInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdmissionModelCopyWith<AdmissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmissionModelCopyWith<$Res> {
  factory $AdmissionModelCopyWith(
          AdmissionModel value, $Res Function(AdmissionModel) then) =
      _$AdmissionModelCopyWithImpl<$Res, AdmissionModel>;
  @useResult
  $Res call(
      {String formNo,
      String registrationNo,
      String registrationDate,
      String? imageUrl,
      StudentDetailsModel studentDetails,
      MedicalInfoModel medicalInfo});

  $StudentDetailsModelCopyWith<$Res> get studentDetails;
  $MedicalInfoModelCopyWith<$Res> get medicalInfo;
}

/// @nodoc
class _$AdmissionModelCopyWithImpl<$Res, $Val extends AdmissionModel>
    implements $AdmissionModelCopyWith<$Res> {
  _$AdmissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formNo = null,
    Object? registrationNo = null,
    Object? registrationDate = null,
    Object? imageUrl = freezed,
    Object? studentDetails = null,
    Object? medicalInfo = null,
  }) {
    return _then(_value.copyWith(
      formNo: null == formNo
          ? _value.formNo
          : formNo // ignore: cast_nullable_to_non_nullable
              as String,
      registrationNo: null == registrationNo
          ? _value.registrationNo
          : registrationNo // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      studentDetails: null == studentDetails
          ? _value.studentDetails
          : studentDetails // ignore: cast_nullable_to_non_nullable
              as StudentDetailsModel,
      medicalInfo: null == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfoModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentDetailsModelCopyWith<$Res> get studentDetails {
    return $StudentDetailsModelCopyWith<$Res>(_value.studentDetails, (value) {
      return _then(_value.copyWith(studentDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoModelCopyWith<$Res> get medicalInfo {
    return $MedicalInfoModelCopyWith<$Res>(_value.medicalInfo, (value) {
      return _then(_value.copyWith(medicalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdmissionModelImplCopyWith<$Res>
    implements $AdmissionModelCopyWith<$Res> {
  factory _$$AdmissionModelImplCopyWith(_$AdmissionModelImpl value,
          $Res Function(_$AdmissionModelImpl) then) =
      __$$AdmissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String formNo,
      String registrationNo,
      String registrationDate,
      String? imageUrl,
      StudentDetailsModel studentDetails,
      MedicalInfoModel medicalInfo});

  @override
  $StudentDetailsModelCopyWith<$Res> get studentDetails;
  @override
  $MedicalInfoModelCopyWith<$Res> get medicalInfo;
}

/// @nodoc
class __$$AdmissionModelImplCopyWithImpl<$Res>
    extends _$AdmissionModelCopyWithImpl<$Res, _$AdmissionModelImpl>
    implements _$$AdmissionModelImplCopyWith<$Res> {
  __$$AdmissionModelImplCopyWithImpl(
      _$AdmissionModelImpl _value, $Res Function(_$AdmissionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formNo = null,
    Object? registrationNo = null,
    Object? registrationDate = null,
    Object? imageUrl = freezed,
    Object? studentDetails = null,
    Object? medicalInfo = null,
  }) {
    return _then(_$AdmissionModelImpl(
      formNo: null == formNo
          ? _value.formNo
          : formNo // ignore: cast_nullable_to_non_nullable
              as String,
      registrationNo: null == registrationNo
          ? _value.registrationNo
          : registrationNo // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      studentDetails: null == studentDetails
          ? _value.studentDetails
          : studentDetails // ignore: cast_nullable_to_non_nullable
              as StudentDetailsModel,
      medicalInfo: null == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdmissionModelImpl implements _AdmissionModel {
  _$AdmissionModelImpl(
      {required this.formNo,
      required this.registrationNo,
      required this.registrationDate,
      this.imageUrl,
      required this.studentDetails,
      required this.medicalInfo});

  factory _$AdmissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdmissionModelImplFromJson(json);

  @override
  final String formNo;
  @override
  final String registrationNo;
  @override
  final String registrationDate;
  @override
  final String? imageUrl;

  /// basic details
  @override
  final StudentDetailsModel studentDetails;
  @override
  final MedicalInfoModel medicalInfo;

  @override
  String toString() {
    return 'AdmissionModel(formNo: $formNo, registrationNo: $registrationNo, registrationDate: $registrationDate, imageUrl: $imageUrl, studentDetails: $studentDetails, medicalInfo: $medicalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdmissionModelImpl &&
            (identical(other.formNo, formNo) || other.formNo == formNo) &&
            (identical(other.registrationNo, registrationNo) ||
                other.registrationNo == registrationNo) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.studentDetails, studentDetails) ||
                other.studentDetails == studentDetails) &&
            (identical(other.medicalInfo, medicalInfo) ||
                other.medicalInfo == medicalInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, formNo, registrationNo,
      registrationDate, imageUrl, studentDetails, medicalInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdmissionModelImplCopyWith<_$AdmissionModelImpl> get copyWith =>
      __$$AdmissionModelImplCopyWithImpl<_$AdmissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdmissionModelImplToJson(
      this,
    );
  }
}

abstract class _AdmissionModel implements AdmissionModel {
  factory _AdmissionModel(
      {required final String formNo,
      required final String registrationNo,
      required final String registrationDate,
      final String? imageUrl,
      required final StudentDetailsModel studentDetails,
      required final MedicalInfoModel medicalInfo}) = _$AdmissionModelImpl;

  factory _AdmissionModel.fromJson(Map<String, dynamic> json) =
      _$AdmissionModelImpl.fromJson;

  @override
  String get formNo;
  @override
  String get registrationNo;
  @override
  String get registrationDate;
  @override
  String? get imageUrl;
  @override

  /// basic details
  StudentDetailsModel get studentDetails;
  @override
  MedicalInfoModel get medicalInfo;
  @override
  @JsonKey(ignore: true)
  _$$AdmissionModelImplCopyWith<_$AdmissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

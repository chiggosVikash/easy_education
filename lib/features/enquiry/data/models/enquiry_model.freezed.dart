// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enquiry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnquiryModel _$EnquiryModelFromJson(Map<String, dynamic> json) {
  return _EnquiryModel.fromJson(json);
}

/// @nodoc
mixin _$EnquiryModel {
  int get id => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get updatedDate => throw _privateConstructorUsedError;
  bool? get isAdmissionDone => throw _privateConstructorUsedError;
  StudentDetailsModel get studentDetails => throw _privateConstructorUsedError;
  ContactDetailsModel get contactDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnquiryModelCopyWith<EnquiryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquiryModelCopyWith<$Res> {
  factory $EnquiryModelCopyWith(
          EnquiryModel value, $Res Function(EnquiryModel) then) =
      _$EnquiryModelCopyWithImpl<$Res, EnquiryModel>;
  @useResult
  $Res call(
      {int id,
      String createdDate,
      String updatedDate,
      bool? isAdmissionDone,
      StudentDetailsModel studentDetails,
      ContactDetailsModel contactDetails});

  $StudentDetailsModelCopyWith<$Res> get studentDetails;
  $ContactDetailsModelCopyWith<$Res> get contactDetails;
}

/// @nodoc
class _$EnquiryModelCopyWithImpl<$Res, $Val extends EnquiryModel>
    implements $EnquiryModelCopyWith<$Res> {
  _$EnquiryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? isAdmissionDone = freezed,
    Object? studentDetails = null,
    Object? contactDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmissionDone: freezed == isAdmissionDone
          ? _value.isAdmissionDone
          : isAdmissionDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentDetails: null == studentDetails
          ? _value.studentDetails
          : studentDetails // ignore: cast_nullable_to_non_nullable
              as StudentDetailsModel,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsModel,
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
  $ContactDetailsModelCopyWith<$Res> get contactDetails {
    return $ContactDetailsModelCopyWith<$Res>(_value.contactDetails, (value) {
      return _then(_value.copyWith(contactDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnquiryModelImplCopyWith<$Res>
    implements $EnquiryModelCopyWith<$Res> {
  factory _$$EnquiryModelImplCopyWith(
          _$EnquiryModelImpl value, $Res Function(_$EnquiryModelImpl) then) =
      __$$EnquiryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String createdDate,
      String updatedDate,
      bool? isAdmissionDone,
      StudentDetailsModel studentDetails,
      ContactDetailsModel contactDetails});

  @override
  $StudentDetailsModelCopyWith<$Res> get studentDetails;
  @override
  $ContactDetailsModelCopyWith<$Res> get contactDetails;
}

/// @nodoc
class __$$EnquiryModelImplCopyWithImpl<$Res>
    extends _$EnquiryModelCopyWithImpl<$Res, _$EnquiryModelImpl>
    implements _$$EnquiryModelImplCopyWith<$Res> {
  __$$EnquiryModelImplCopyWithImpl(
      _$EnquiryModelImpl _value, $Res Function(_$EnquiryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? isAdmissionDone = freezed,
    Object? studentDetails = null,
    Object? contactDetails = null,
  }) {
    return _then(_$EnquiryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmissionDone: freezed == isAdmissionDone
          ? _value.isAdmissionDone
          : isAdmissionDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentDetails: null == studentDetails
          ? _value.studentDetails
          : studentDetails // ignore: cast_nullable_to_non_nullable
              as StudentDetailsModel,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnquiryModelImpl extends _EnquiryModel {
  _$EnquiryModelImpl(
      {required this.id,
      required this.createdDate,
      required this.updatedDate,
      this.isAdmissionDone = false,
      required this.studentDetails,
      required this.contactDetails})
      : super._();

  factory _$EnquiryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnquiryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String createdDate;
  @override
  final String updatedDate;
  @override
  @JsonKey()
  final bool? isAdmissionDone;
  @override
  final StudentDetailsModel studentDetails;
  @override
  final ContactDetailsModel contactDetails;

  @override
  String toString() {
    return 'EnquiryModel(id: $id, createdDate: $createdDate, updatedDate: $updatedDate, isAdmissionDone: $isAdmissionDone, studentDetails: $studentDetails, contactDetails: $contactDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.isAdmissionDone, isAdmissionDone) ||
                other.isAdmissionDone == isAdmissionDone) &&
            (identical(other.studentDetails, studentDetails) ||
                other.studentDetails == studentDetails) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdDate, updatedDate,
      isAdmissionDone, studentDetails, contactDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquiryModelImplCopyWith<_$EnquiryModelImpl> get copyWith =>
      __$$EnquiryModelImplCopyWithImpl<_$EnquiryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnquiryModelImplToJson(
      this,
    );
  }
}

abstract class _EnquiryModel extends EnquiryModel {
  factory _EnquiryModel(
      {required final int id,
      required final String createdDate,
      required final String updatedDate,
      final bool? isAdmissionDone,
      required final StudentDetailsModel studentDetails,
      required final ContactDetailsModel contactDetails}) = _$EnquiryModelImpl;
  _EnquiryModel._() : super._();

  factory _EnquiryModel.fromJson(Map<String, dynamic> json) =
      _$EnquiryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get createdDate;
  @override
  String get updatedDate;
  @override
  bool? get isAdmissionDone;
  @override
  StudentDetailsModel get studentDetails;
  @override
  ContactDetailsModel get contactDetails;
  @override
  @JsonKey(ignore: true)
  _$$EnquiryModelImplCopyWith<_$EnquiryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

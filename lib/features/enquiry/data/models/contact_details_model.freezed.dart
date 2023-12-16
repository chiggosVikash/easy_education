// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactDetailsModel _$ContactDetailsModelFromJson(Map<String, dynamic> json) {
  return _ContactDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsModel {
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get fatherPhone => throw _privateConstructorUsedError;
  String? get fatherEmail => throw _privateConstructorUsedError;
  String? get motherEmail => throw _privateConstructorUsedError;
  String? get motherPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDetailsModelCopyWith<ContactDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsModelCopyWith<$Res> {
  factory $ContactDetailsModelCopyWith(
          ContactDetailsModel value, $Res Function(ContactDetailsModel) then) =
      _$ContactDetailsModelCopyWithImpl<$Res, ContactDetailsModel>;
  @useResult
  $Res call(
      {String phone,
      String email,
      String? fatherPhone,
      String? fatherEmail,
      String? motherEmail,
      String? motherPhone});
}

/// @nodoc
class _$ContactDetailsModelCopyWithImpl<$Res, $Val extends ContactDetailsModel>
    implements $ContactDetailsModelCopyWith<$Res> {
  _$ContactDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? fatherPhone = freezed,
    Object? fatherEmail = freezed,
    Object? motherEmail = freezed,
    Object? motherPhone = freezed,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fatherPhone: freezed == fatherPhone
          ? _value.fatherPhone
          : fatherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherEmail: freezed == fatherEmail
          ? _value.fatherEmail
          : fatherEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      motherEmail: freezed == motherEmail
          ? _value.motherEmail
          : motherEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      motherPhone: freezed == motherPhone
          ? _value.motherPhone
          : motherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsModelImplCopyWith<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  factory _$$ContactDetailsModelImplCopyWith(_$ContactDetailsModelImpl value,
          $Res Function(_$ContactDetailsModelImpl) then) =
      __$$ContactDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phone,
      String email,
      String? fatherPhone,
      String? fatherEmail,
      String? motherEmail,
      String? motherPhone});
}

/// @nodoc
class __$$ContactDetailsModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsModelCopyWithImpl<$Res, _$ContactDetailsModelImpl>
    implements _$$ContactDetailsModelImplCopyWith<$Res> {
  __$$ContactDetailsModelImplCopyWithImpl(_$ContactDetailsModelImpl _value,
      $Res Function(_$ContactDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? fatherPhone = freezed,
    Object? fatherEmail = freezed,
    Object? motherEmail = freezed,
    Object? motherPhone = freezed,
  }) {
    return _then(_$ContactDetailsModelImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fatherPhone: freezed == fatherPhone
          ? _value.fatherPhone
          : fatherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherEmail: freezed == fatherEmail
          ? _value.fatherEmail
          : fatherEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      motherEmail: freezed == motherEmail
          ? _value.motherEmail
          : motherEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      motherPhone: freezed == motherPhone
          ? _value.motherPhone
          : motherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsModelImpl extends _ContactDetailsModel {
  _$ContactDetailsModelImpl(
      {required this.phone,
      required this.email,
      this.fatherPhone,
      this.fatherEmail,
      this.motherEmail,
      this.motherPhone})
      : super._();

  factory _$ContactDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsModelImplFromJson(json);

  @override
  final String phone;
  @override
  final String email;
  @override
  final String? fatherPhone;
  @override
  final String? fatherEmail;
  @override
  final String? motherEmail;
  @override
  final String? motherPhone;

  @override
  String toString() {
    return 'ContactDetailsModel(phone: $phone, email: $email, fatherPhone: $fatherPhone, fatherEmail: $fatherEmail, motherEmail: $motherEmail, motherPhone: $motherPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fatherPhone, fatherPhone) ||
                other.fatherPhone == fatherPhone) &&
            (identical(other.fatherEmail, fatherEmail) ||
                other.fatherEmail == fatherEmail) &&
            (identical(other.motherEmail, motherEmail) ||
                other.motherEmail == motherEmail) &&
            (identical(other.motherPhone, motherPhone) ||
                other.motherPhone == motherPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email, fatherPhone,
      fatherEmail, motherEmail, motherPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      __$$ContactDetailsModelImplCopyWithImpl<_$ContactDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsModel extends ContactDetailsModel {
  factory _ContactDetailsModel(
      {required final String phone,
      required final String email,
      final String? fatherPhone,
      final String? fatherEmail,
      final String? motherEmail,
      final String? motherPhone}) = _$ContactDetailsModelImpl;
  _ContactDetailsModel._() : super._();

  factory _ContactDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsModelImpl.fromJson;

  @override
  String get phone;
  @override
  String get email;
  @override
  String? get fatherPhone;
  @override
  String? get fatherEmail;
  @override
  String? get motherEmail;
  @override
  String? get motherPhone;
  @override
  @JsonKey(ignore: true)
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

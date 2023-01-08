// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppError {
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$$_AppErrorCopyWith(
          _$_AppError value, $Res Function(_$_AppError) then) =
      __$$_AppErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_AppErrorCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_AppError>
    implements _$$_AppErrorCopyWith<$Res> {
  __$$_AppErrorCopyWithImpl(
      _$_AppError _value, $Res Function(_$_AppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AppError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppError implements _AppError {
  const _$_AppError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AppError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      __$$_AppErrorCopyWithImpl<_$_AppError>(this, _$identity);
}

abstract class _AppError implements AppError {
  const factory _AppError({final String? error}) = _$_AppError;

  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

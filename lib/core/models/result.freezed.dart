// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<L, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) success,
    required TResult Function(L error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? success,
    TResult? Function(L error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? success,
    TResult Function(L error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<L, R> value) success,
    required TResult Function(_Failure<L, R> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<L, R> value)? success,
    TResult? Function(_Failure<L, R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<L, R> value)? success,
    TResult Function(_Failure<L, R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<L, R, $Res> {
  factory $ResultCopyWith(
          Result<L, R> value, $Res Function(Result<L, R>) then) =
      _$ResultCopyWithImpl<L, R, $Res, Result<L, R>>;
}

/// @nodoc
class _$ResultCopyWithImpl<L, R, $Res, $Val extends Result<L, R>>
    implements $ResultCopyWith<L, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<L, R, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<L, R> value, $Res Function(_$_Success<L, R>) then) =
      __$$_SuccessCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({R value});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<L, R, $Res>
    extends _$ResultCopyWithImpl<L, R, $Res, _$_Success<L, R>>
    implements _$$_SuccessCopyWith<L, R, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<L, R> _value, $Res Function(_$_Success<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Success<L, R>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$_Success<L, R> implements _Success<L, R> {
  const _$_Success(this.value);

  @override
  final R value;

  @override
  String toString() {
    return 'Result<$L, $R>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<L, R> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<L, R, _$_Success<L, R>> get copyWith =>
      __$$_SuccessCopyWithImpl<L, R, _$_Success<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) success,
    required TResult Function(L error) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? success,
    TResult? Function(L error)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? success,
    TResult Function(L error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<L, R> value) success,
    required TResult Function(_Failure<L, R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<L, R> value)? success,
    TResult? Function(_Failure<L, R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<L, R> value)? success,
    TResult Function(_Failure<L, R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<L, R> implements Result<L, R> {
  const factory _Success(final R value) = _$_Success<L, R>;

  R get value;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<L, R, _$_Success<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<L, R, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<L, R> value, $Res Function(_$_Failure<L, R>) then) =
      __$$_FailureCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({L error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<L, R, $Res>
    extends _$ResultCopyWithImpl<L, R, $Res, _$_Failure<L, R>>
    implements _$$_FailureCopyWith<L, R, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<L, R> _value, $Res Function(_$_Failure<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure<L, R>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as L,
    ));
  }
}

/// @nodoc

class _$_Failure<L, R> implements _Failure<L, R> {
  const _$_Failure(this.error);

  @override
  final L error;

  @override
  String toString() {
    return 'Result<$L, $R>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<L, R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<L, R, _$_Failure<L, R>> get copyWith =>
      __$$_FailureCopyWithImpl<L, R, _$_Failure<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) success,
    required TResult Function(L error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? success,
    TResult? Function(L error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? success,
    TResult Function(L error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<L, R> value) success,
    required TResult Function(_Failure<L, R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<L, R> value)? success,
    TResult? Function(_Failure<L, R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<L, R> value)? success,
    TResult Function(_Failure<L, R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<L, R> implements Result<L, R> {
  const factory _Failure(final L error) = _$_Failure<L, R>;

  L get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<L, R, _$_Failure<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

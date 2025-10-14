// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<L,R> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<L, R>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$L, $R>()';
}


}

/// @nodoc
class $ResultCopyWith<L,R,$Res>  {
$ResultCopyWith(Result<L, R> _, $Res Function(Result<L, R>) __);
}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns<L,R> on Result<L, R> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Success<L, R> value)?  success,TResult Function( Failure<L, R> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Success<L, R> value)  success,required TResult Function( Failure<L, R> value)  failure,}){
final _that = this;
switch (_that) {
case Success():
return success(_that);case Failure():
return failure(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Success<L, R> value)?  success,TResult? Function( Failure<L, R> value)?  failure,}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( R value)?  success,TResult Function( L error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.value);case Failure() when failure != null:
return failure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( R value)  success,required TResult Function( L error)  failure,}) {final _that = this;
switch (_that) {
case Success():
return success(_that.value);case Failure():
return failure(_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( R value)?  success,TResult? Function( L error)?  failure,}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.value);case Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Success<L,R> implements Result<L, R> {
  const Success(this.value);
  

 final  R value;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<L, R, Success<L, R>> get copyWith => _$SuccessCopyWithImpl<L, R, Success<L, R>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<L, R>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Result<$L, $R>.success(value: $value)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<L,R,$Res> implements $ResultCopyWith<L, R, $Res> {
  factory $SuccessCopyWith(Success<L, R> value, $Res Function(Success<L, R>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 R value
});




}
/// @nodoc
class _$SuccessCopyWithImpl<L,R,$Res>
    implements $SuccessCopyWith<L, R, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<L, R> _self;
  final $Res Function(Success<L, R>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(Success<L, R>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as R,
  ));
}


}

/// @nodoc


class Failure<L,R> implements Result<L, R> {
  const Failure(this.error);
  

 final  L error;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<L, R, Failure<L, R>> get copyWith => _$FailureCopyWithImpl<L, R, Failure<L, R>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<L, R>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Result<$L, $R>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<L,R,$Res> implements $ResultCopyWith<L, R, $Res> {
  factory $FailureCopyWith(Failure<L, R> value, $Res Function(Failure<L, R>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 L error
});




}
/// @nodoc
class _$FailureCopyWithImpl<L,R,$Res>
    implements $FailureCopyWith<L, R, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<L, R> _self;
  final $Res Function(Failure<L, R>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(Failure<L, R>(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as L,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticleListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListState()';
}


}

/// @nodoc
class $ArticleListStateCopyWith<$Res>  {
$ArticleListStateCopyWith(ArticleListState _, $Res Function(ArticleListState) __);
}


/// Adds pattern-matching-related methods to [ArticleListState].
extension ArticleListStatePatterns on ArticleListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ArticleListStateLoading value)?  loading,TResult Function( ArticleListStateLoaded value)?  loaded,TResult Function( ArticleListStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ArticleListStateLoading() when loading != null:
return loading(_that);case ArticleListStateLoaded() when loaded != null:
return loaded(_that);case ArticleListStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ArticleListStateLoading value)  loading,required TResult Function( ArticleListStateLoaded value)  loaded,required TResult Function( ArticleListStateError value)  error,}){
final _that = this;
switch (_that) {
case ArticleListStateLoading():
return loading(_that);case ArticleListStateLoaded():
return loaded(_that);case ArticleListStateError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ArticleListStateLoading value)?  loading,TResult? Function( ArticleListStateLoaded value)?  loaded,TResult? Function( ArticleListStateError value)?  error,}){
final _that = this;
switch (_that) {
case ArticleListStateLoading() when loading != null:
return loading(_that);case ArticleListStateLoaded() when loaded != null:
return loaded(_that);case ArticleListStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<RssItem> articles)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ArticleListStateLoading() when loading != null:
return loading();case ArticleListStateLoaded() when loaded != null:
return loaded(_that.articles);case ArticleListStateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<RssItem> articles)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ArticleListStateLoading():
return loading();case ArticleListStateLoaded():
return loaded(_that.articles);case ArticleListStateError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<RssItem> articles)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ArticleListStateLoading() when loading != null:
return loading();case ArticleListStateLoaded() when loaded != null:
return loaded(_that.articles);case ArticleListStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ArticleListStateLoading implements ArticleListState {
  const ArticleListStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListState.loading()';
}


}




/// @nodoc


class ArticleListStateLoaded implements ArticleListState {
  const ArticleListStateLoaded(final  List<RssItem> articles): _articles = articles;
  

 final  List<RssItem> _articles;
 List<RssItem> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of ArticleListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleListStateLoadedCopyWith<ArticleListStateLoaded> get copyWith => _$ArticleListStateLoadedCopyWithImpl<ArticleListStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListStateLoaded&&const DeepCollectionEquality().equals(other._articles, _articles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'ArticleListState.loaded(articles: $articles)';
}


}

/// @nodoc
abstract mixin class $ArticleListStateLoadedCopyWith<$Res> implements $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateLoadedCopyWith(ArticleListStateLoaded value, $Res Function(ArticleListStateLoaded) _then) = _$ArticleListStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<RssItem> articles
});




}
/// @nodoc
class _$ArticleListStateLoadedCopyWithImpl<$Res>
    implements $ArticleListStateLoadedCopyWith<$Res> {
  _$ArticleListStateLoadedCopyWithImpl(this._self, this._then);

  final ArticleListStateLoaded _self;
  final $Res Function(ArticleListStateLoaded) _then;

/// Create a copy of ArticleListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,}) {
  return _then(ArticleListStateLoaded(
null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<RssItem>,
  ));
}


}

/// @nodoc


class ArticleListStateError implements ArticleListState {
  const ArticleListStateError(this.message);
  

 final  String message;

/// Create a copy of ArticleListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleListStateErrorCopyWith<ArticleListStateError> get copyWith => _$ArticleListStateErrorCopyWithImpl<ArticleListStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ArticleListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ArticleListStateErrorCopyWith<$Res> implements $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateErrorCopyWith(ArticleListStateError value, $Res Function(ArticleListStateError) _then) = _$ArticleListStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ArticleListStateErrorCopyWithImpl<$Res>
    implements $ArticleListStateErrorCopyWith<$Res> {
  _$ArticleListStateErrorCopyWithImpl(this._self, this._then);

  final ArticleListStateError _self;
  final $Res Function(ArticleListStateError) _then;

/// Create a copy of ArticleListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ArticleListStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

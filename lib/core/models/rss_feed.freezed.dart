// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RssResponse {

 String? get status; List<RssItem>? get items;
/// Create a copy of RssResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RssResponseCopyWith<RssResponse> get copyWith => _$RssResponseCopyWithImpl<RssResponse>(this as RssResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RssResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'RssResponse(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $RssResponseCopyWith<$Res>  {
  factory $RssResponseCopyWith(RssResponse value, $Res Function(RssResponse) _then) = _$RssResponseCopyWithImpl;
@useResult
$Res call({
 String? status, List<RssItem>? items
});




}
/// @nodoc
class _$RssResponseCopyWithImpl<$Res>
    implements $RssResponseCopyWith<$Res> {
  _$RssResponseCopyWithImpl(this._self, this._then);

  final RssResponse _self;
  final $Res Function(RssResponse) _then;

/// Create a copy of RssResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<RssItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RssResponse].
extension RssResponsePatterns on RssResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RssResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RssResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RssResponse value)  $default,){
final _that = this;
switch (_that) {
case _RssResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RssResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RssResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  List<RssItem>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RssResponse() when $default != null:
return $default(_that.status,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  List<RssItem>? items)  $default,) {final _that = this;
switch (_that) {
case _RssResponse():
return $default(_that.status,_that.items);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  List<RssItem>? items)?  $default,) {final _that = this;
switch (_that) {
case _RssResponse() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _RssResponse implements RssResponse {
  const _RssResponse({required this.status, required final  List<RssItem>? items}): _items = items;
  factory _RssResponse.fromJson(Map<String, dynamic> json) => _$RssResponseFromJson(json);

@override final  String? status;
 final  List<RssItem>? _items;
@override List<RssItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RssResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RssResponseCopyWith<_RssResponse> get copyWith => __$RssResponseCopyWithImpl<_RssResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RssResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'RssResponse(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$RssResponseCopyWith<$Res> implements $RssResponseCopyWith<$Res> {
  factory _$RssResponseCopyWith(_RssResponse value, $Res Function(_RssResponse) _then) = __$RssResponseCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<RssItem>? items
});




}
/// @nodoc
class __$RssResponseCopyWithImpl<$Res>
    implements _$RssResponseCopyWith<$Res> {
  __$RssResponseCopyWithImpl(this._self, this._then);

  final _RssResponse _self;
  final $Res Function(_RssResponse) _then;

/// Create a copy of RssResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? items = freezed,}) {
  return _then(_RssResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<RssItem>?,
  ));
}


}


/// @nodoc
mixin _$RssItem {

 String? get title; DateTime? get pubDate; String? get link; String? get thumbnail; List<String>? get categories;
/// Create a copy of RssItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RssItemCopyWith<RssItem> get copyWith => _$RssItemCopyWithImpl<RssItem>(this as RssItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RssItem&&(identical(other.title, title) || other.title == title)&&(identical(other.pubDate, pubDate) || other.pubDate == pubDate)&&(identical(other.link, link) || other.link == link)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,pubDate,link,thumbnail,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'RssItem(title: $title, pubDate: $pubDate, link: $link, thumbnail: $thumbnail, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $RssItemCopyWith<$Res>  {
  factory $RssItemCopyWith(RssItem value, $Res Function(RssItem) _then) = _$RssItemCopyWithImpl;
@useResult
$Res call({
 String? title, DateTime? pubDate, String? link, String? thumbnail, List<String>? categories
});




}
/// @nodoc
class _$RssItemCopyWithImpl<$Res>
    implements $RssItemCopyWith<$Res> {
  _$RssItemCopyWithImpl(this._self, this._then);

  final RssItem _self;
  final $Res Function(RssItem) _then;

/// Create a copy of RssItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? pubDate = freezed,Object? link = freezed,Object? thumbnail = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,pubDate: freezed == pubDate ? _self.pubDate : pubDate // ignore: cast_nullable_to_non_nullable
as DateTime?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RssItem].
extension RssItemPatterns on RssItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RssItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RssItem() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RssItem value)  $default,){
final _that = this;
switch (_that) {
case _RssItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RssItem value)?  $default,){
final _that = this;
switch (_that) {
case _RssItem() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  DateTime? pubDate,  String? link,  String? thumbnail,  List<String>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RssItem() when $default != null:
return $default(_that.title,_that.pubDate,_that.link,_that.thumbnail,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  DateTime? pubDate,  String? link,  String? thumbnail,  List<String>? categories)  $default,) {final _that = this;
switch (_that) {
case _RssItem():
return $default(_that.title,_that.pubDate,_that.link,_that.thumbnail,_that.categories);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  DateTime? pubDate,  String? link,  String? thumbnail,  List<String>? categories)?  $default,) {final _that = this;
switch (_that) {
case _RssItem() when $default != null:
return $default(_that.title,_that.pubDate,_that.link,_that.thumbnail,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _RssItem extends RssItem {
  const _RssItem({required this.title, required this.pubDate, required this.link, required this.thumbnail, required final  List<String>? categories}): _categories = categories,super._();
  factory _RssItem.fromJson(Map<String, dynamic> json) => _$RssItemFromJson(json);

@override final  String? title;
@override final  DateTime? pubDate;
@override final  String? link;
@override final  String? thumbnail;
 final  List<String>? _categories;
@override List<String>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RssItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RssItemCopyWith<_RssItem> get copyWith => __$RssItemCopyWithImpl<_RssItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RssItem&&(identical(other.title, title) || other.title == title)&&(identical(other.pubDate, pubDate) || other.pubDate == pubDate)&&(identical(other.link, link) || other.link == link)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,pubDate,link,thumbnail,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'RssItem(title: $title, pubDate: $pubDate, link: $link, thumbnail: $thumbnail, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$RssItemCopyWith<$Res> implements $RssItemCopyWith<$Res> {
  factory _$RssItemCopyWith(_RssItem value, $Res Function(_RssItem) _then) = __$RssItemCopyWithImpl;
@override @useResult
$Res call({
 String? title, DateTime? pubDate, String? link, String? thumbnail, List<String>? categories
});




}
/// @nodoc
class __$RssItemCopyWithImpl<$Res>
    implements _$RssItemCopyWith<$Res> {
  __$RssItemCopyWithImpl(this._self, this._then);

  final _RssItem _self;
  final $Res Function(_RssItem) _then;

/// Create a copy of RssItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? pubDate = freezed,Object? link = freezed,Object? thumbnail = freezed,Object? categories = freezed,}) {
  return _then(_RssItem(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,pubDate: freezed == pubDate ? _self.pubDate : pubDate // ignore: cast_nullable_to_non_nullable
as DateTime?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on

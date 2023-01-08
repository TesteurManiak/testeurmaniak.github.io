// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RssResponse _$RssResponseFromJson(Map<String, dynamic> json) {
  return _RssResponse.fromJson(json);
}

/// @nodoc
mixin _$RssResponse {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<RssItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RssResponseCopyWith<RssResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RssResponseCopyWith<$Res> {
  factory $RssResponseCopyWith(
          RssResponse value, $Res Function(RssResponse) then) =
      _$RssResponseCopyWithImpl<$Res, RssResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'items') List<RssItem>? items});
}

/// @nodoc
class _$RssResponseCopyWithImpl<$Res, $Val extends RssResponse>
    implements $RssResponseCopyWith<$Res> {
  _$RssResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RssItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RssResponseCopyWith<$Res>
    implements $RssResponseCopyWith<$Res> {
  factory _$$_RssResponseCopyWith(
          _$_RssResponse value, $Res Function(_$_RssResponse) then) =
      __$$_RssResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'items') List<RssItem>? items});
}

/// @nodoc
class __$$_RssResponseCopyWithImpl<$Res>
    extends _$RssResponseCopyWithImpl<$Res, _$_RssResponse>
    implements _$$_RssResponseCopyWith<$Res> {
  __$$_RssResponseCopyWithImpl(
      _$_RssResponse _value, $Res Function(_$_RssResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_RssResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RssItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssResponse implements _RssResponse {
  const _$_RssResponse(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'items') required final List<RssItem>? items})
      : _items = items;

  factory _$_RssResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RssResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<RssItem>? _items;
  @override
  @JsonKey(name: 'items')
  List<RssItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RssResponse(status: $status, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RssResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RssResponseCopyWith<_$_RssResponse> get copyWith =>
      __$$_RssResponseCopyWithImpl<_$_RssResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssResponseToJson(
      this,
    );
  }
}

abstract class _RssResponse implements RssResponse {
  const factory _RssResponse(
          {@JsonKey(name: 'status') required final String? status,
          @JsonKey(name: 'items') required final List<RssItem>? items}) =
      _$_RssResponse;

  factory _RssResponse.fromJson(Map<String, dynamic> json) =
      _$_RssResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'items')
  List<RssItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_RssResponseCopyWith<_$_RssResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RssItem _$RssItemFromJson(Map<String, dynamic> json) {
  return _RssItem.fromJson(json);
}

/// @nodoc
mixin _$RssItem {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'pubDate')
  DateTime? get pubDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<String>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RssItemCopyWith<RssItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RssItemCopyWith<$Res> {
  factory $RssItemCopyWith(RssItem value, $Res Function(RssItem) then) =
      _$RssItemCopyWithImpl<$Res, RssItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'pubDate') DateTime? pubDate,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'categories') List<String>? categories});
}

/// @nodoc
class _$RssItemCopyWithImpl<$Res, $Val extends RssItem>
    implements $RssItemCopyWith<$Res> {
  _$RssItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? pubDate = freezed,
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RssItemCopyWith<$Res> implements $RssItemCopyWith<$Res> {
  factory _$$_RssItemCopyWith(
          _$_RssItem value, $Res Function(_$_RssItem) then) =
      __$$_RssItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'pubDate') DateTime? pubDate,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'categories') List<String>? categories});
}

/// @nodoc
class __$$_RssItemCopyWithImpl<$Res>
    extends _$RssItemCopyWithImpl<$Res, _$_RssItem>
    implements _$$_RssItemCopyWith<$Res> {
  __$$_RssItemCopyWithImpl(_$_RssItem _value, $Res Function(_$_RssItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? pubDate = freezed,
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_RssItem(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssItem extends _RssItem {
  const _$_RssItem(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'pubDate') required this.pubDate,
      @JsonKey(name: 'link') required this.link,
      @JsonKey(name: 'thumbnail') required this.thumbnail,
      @JsonKey(name: 'categories') required final List<String>? categories})
      : _categories = categories,
        super._();

  factory _$_RssItem.fromJson(Map<String, dynamic> json) =>
      _$$_RssItemFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'pubDate')
  final DateTime? pubDate;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;
  final List<String>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RssItem(title: $title, pubDate: $pubDate, link: $link, thumbnail: $thumbnail, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RssItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, pubDate, link, thumbnail,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RssItemCopyWith<_$_RssItem> get copyWith =>
      __$$_RssItemCopyWithImpl<_$_RssItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssItemToJson(
      this,
    );
  }
}

abstract class _RssItem extends RssItem {
  const factory _RssItem(
      {@JsonKey(name: 'title')
          required final String? title,
      @JsonKey(name: 'pubDate')
          required final DateTime? pubDate,
      @JsonKey(name: 'link')
          required final String? link,
      @JsonKey(name: 'thumbnail')
          required final String? thumbnail,
      @JsonKey(name: 'categories')
          required final List<String>? categories}) = _$_RssItem;
  const _RssItem._() : super._();

  factory _RssItem.fromJson(Map<String, dynamic> json) = _$_RssItem.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'pubDate')
  DateTime? get pubDate;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(name: 'categories')
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_RssItemCopyWith<_$_RssItem> get copyWith =>
      throw _privateConstructorUsedError;
}

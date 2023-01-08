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
  @JsonKey(name: 'feed')
  RssFeed get feed => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'feed') RssFeed feed,
      @JsonKey(name: 'items') List<RssItem>? items});

  $RssFeedCopyWith<$Res> get feed;
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
    Object? feed = null,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as RssFeed,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RssItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RssFeedCopyWith<$Res> get feed {
    return $RssFeedCopyWith<$Res>(_value.feed, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
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
      @JsonKey(name: 'feed') RssFeed feed,
      @JsonKey(name: 'items') List<RssItem>? items});

  @override
  $RssFeedCopyWith<$Res> get feed;
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
    Object? feed = null,
    Object? items = freezed,
  }) {
    return _then(_$_RssResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as RssFeed,
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
      @JsonKey(name: 'feed') required this.feed,
      @JsonKey(name: 'items') required final List<RssItem>? items})
      : _items = items;

  factory _$_RssResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RssResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'feed')
  final RssFeed feed;
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
    return 'RssResponse(status: $status, feed: $feed, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RssResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feed, feed) || other.feed == feed) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, feed, const DeepCollectionEquality().hash(_items));

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
          @JsonKey(name: 'feed') required final RssFeed feed,
          @JsonKey(name: 'items') required final List<RssItem>? items}) =
      _$_RssResponse;

  factory _RssResponse.fromJson(Map<String, dynamic> json) =
      _$_RssResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'feed')
  RssFeed get feed;
  @override
  @JsonKey(name: 'items')
  List<RssItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_RssResponseCopyWith<_$_RssResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RssFeed _$RssFeedFromJson(Map<String, dynamic> json) {
  return _RssFeed.fromJson(json);
}

/// @nodoc
mixin _$RssFeed {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RssFeedCopyWith<RssFeed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RssFeedCopyWith<$Res> {
  factory $RssFeedCopyWith(RssFeed value, $Res Function(RssFeed) then) =
      _$RssFeedCopyWithImpl<$Res, RssFeed>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      String? image});
}

/// @nodoc
class _$RssFeedCopyWithImpl<$Res, $Val extends RssFeed>
    implements $RssFeedCopyWith<$Res> {
  _$RssFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RssFeedCopyWith<$Res> implements $RssFeedCopyWith<$Res> {
  factory _$$_RssFeedCopyWith(
          _$_RssFeed value, $Res Function(_$_RssFeed) then) =
      __$$_RssFeedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      String? image});
}

/// @nodoc
class __$$_RssFeedCopyWithImpl<$Res>
    extends _$RssFeedCopyWithImpl<$Res, _$_RssFeed>
    implements _$$_RssFeedCopyWith<$Res> {
  __$$_RssFeedCopyWithImpl(_$_RssFeed _value, $Res Function(_$_RssFeed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_RssFeed(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssFeed implements _RssFeed {
  const _$_RssFeed(
      {@JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'link') required this.link,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'description') required this.description,
      required this.image});

  factory _$_RssFeed.fromJson(Map<String, dynamic> json) =>
      _$$_RssFeedFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'RssFeed(url: $url, title: $title, link: $link, author: $author, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RssFeed &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, title, link, author, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RssFeedCopyWith<_$_RssFeed> get copyWith =>
      __$$_RssFeedCopyWithImpl<_$_RssFeed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssFeedToJson(
      this,
    );
  }
}

abstract class _RssFeed implements RssFeed {
  const factory _RssFeed(
      {@JsonKey(name: 'url') required final String? url,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'link') required final String? link,
      @JsonKey(name: 'author') required final String? author,
      @JsonKey(name: 'description') required final String? description,
      required final String? image}) = _$_RssFeed;

  factory _RssFeed.fromJson(Map<String, dynamic> json) = _$_RssFeed.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_RssFeedCopyWith<_$_RssFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

RssItem _$RssItemFromJson(Map<String, dynamic> json) {
  return _RssItem.fromJson(json);
}

/// @nodoc
mixin _$RssItem {
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'pubDate')
  String? get pubDate => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get guid => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
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
      {String? title,
      @JsonKey(name: 'pubDate') String? pubDate,
      String? link,
      String? guid,
      String? author,
      String? thumbnail,
      String? description,
      String? content,
      List<String>? categories});
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
    Object? guid = freezed,
    Object? author = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? content = freezed,
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
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: freezed == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
      {String? title,
      @JsonKey(name: 'pubDate') String? pubDate,
      String? link,
      String? guid,
      String? author,
      String? thumbnail,
      String? description,
      String? content,
      List<String>? categories});
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
    Object? guid = freezed,
    Object? author = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? content = freezed,
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
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: freezed == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_RssItem implements _RssItem {
  const _$_RssItem(
      {required this.title,
      @JsonKey(name: 'pubDate') required this.pubDate,
      required this.link,
      required this.guid,
      required this.author,
      required this.thumbnail,
      required this.description,
      required this.content,
      required final List<String>? categories})
      : _categories = categories;

  factory _$_RssItem.fromJson(Map<String, dynamic> json) =>
      _$$_RssItemFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey(name: 'pubDate')
  final String? pubDate;
  @override
  final String? link;
  @override
  final String? guid;
  @override
  final String? author;
  @override
  final String? thumbnail;
  @override
  final String? description;
  @override
  final String? content;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RssItem(title: $title, pubDate: $pubDate, link: $link, guid: $guid, author: $author, thumbnail: $thumbnail, description: $description, content: $content, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RssItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      pubDate,
      link,
      guid,
      author,
      thumbnail,
      description,
      content,
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

abstract class _RssItem implements RssItem {
  const factory _RssItem(
      {required final String? title,
      @JsonKey(name: 'pubDate') required final String? pubDate,
      required final String? link,
      required final String? guid,
      required final String? author,
      required final String? thumbnail,
      required final String? description,
      required final String? content,
      required final List<String>? categories}) = _$_RssItem;

  factory _RssItem.fromJson(Map<String, dynamic> json) = _$_RssItem.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(name: 'pubDate')
  String? get pubDate;
  @override
  String? get link;
  @override
  String? get guid;
  @override
  String? get author;
  @override
  String? get thumbnail;
  @override
  String? get description;
  @override
  String? get content;
  @override
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_RssItemCopyWith<_$_RssItem> get copyWith =>
      throw _privateConstructorUsedError;
}

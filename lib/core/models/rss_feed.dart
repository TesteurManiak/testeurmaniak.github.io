import 'package:freezed_annotation/freezed_annotation.dart';

part 'rss_feed.freezed.dart';
part 'rss_feed.g.dart';

@freezed
class RssResponse with _$RssResponse {
  const factory RssResponse({
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'feed') required RssFeed feed,
    @JsonKey(name: 'items') required List<RssItem>? items,
  }) = _RssResponse;

  factory RssResponse.fromJson(Map<String, dynamic> json) =>
      _$RssResponseFromJson(json);
}

@freezed
class RssFeed with _$RssFeed {
  const factory RssFeed({
    @JsonKey(name: 'url') required String? url,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'link') required String? link,
    @JsonKey(name: 'author') required String? author,
    @JsonKey(name: 'description') required String? description,
    required String? image,
  }) = _RssFeed;

  factory RssFeed.fromJson(Map<String, dynamic> json) =>
      _$RssFeedFromJson(json);
}

@freezed
class RssItem with _$RssItem {
  const factory RssItem({
    required String? title,
    @JsonKey(name: 'pubDate') required String? pubDate,
    required String? link,
    required String? guid,
    required String? author,
    required String? thumbnail,
    required String? description,
    required String? content,
    required List<String>? categories,
  }) = _RssItem;

  factory RssItem.fromJson(Map<String, dynamic> json) =>
      _$RssItemFromJson(json);
}

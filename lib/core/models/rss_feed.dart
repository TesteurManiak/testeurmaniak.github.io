import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'rss_feed.freezed.dart';
part 'rss_feed.g.dart';

@freezed
class RssResponse with _$RssResponse {
  const factory RssResponse({
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'items') required List<RssItem>? items,
  }) = _RssResponse;

  factory RssResponse.fromJson(Map<String, dynamic> json) =>
      _$RssResponseFromJson(json);
}

@freezed
class RssItem with _$RssItem {
  const factory RssItem({
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'pubDate') required DateTime? pubDate,
    @JsonKey(name: 'link') required String? link,
    @JsonKey(name: 'thumbnail') required String? thumbnail,
    @JsonKey(name: 'categories') required List<String>? categories,
  }) = _RssItem;

  const RssItem._();

  factory RssItem.fromJson(Map<String, dynamic> json) =>
      _$RssItemFromJson(json);

  Future<void> launch() async {
    final localLink = link;
    if (localLink != null) {
      await launchUrlString(localLink);
    }
  }
}

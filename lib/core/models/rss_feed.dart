import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'rss_feed.freezed.dart';
part 'rss_feed.g.dart';

@Freezed(toJson: false)
abstract class RssResponse with _$RssResponse {
  const factory RssResponse({
    required String? status,
    required List<RssItem>? items,
  }) = _RssResponse;

  factory RssResponse.fromJson(Map<String, dynamic> json) =>
      _$RssResponseFromJson(json);
}

@Freezed(toJson: false)
abstract class RssItem with _$RssItem {
  const factory RssItem({
    required String? title,
    required DateTime? pubDate,
    required String? link,
    required String? thumbnail,
    required List<String>? categories,
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

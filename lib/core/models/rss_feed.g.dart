// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RssResponse _$RssResponseFromJson(Map<String, dynamic> json) => _RssResponse(
  status: json['status'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => RssItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

_RssItem _$RssItemFromJson(Map<String, dynamic> json) => _RssItem(
  title: json['title'] as String?,
  pubDate: json['pubDate'] == null
      ? null
      : DateTime.parse(json['pubDate'] as String),
  link: json['link'] as String?,
  thumbnail: json['thumbnail'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

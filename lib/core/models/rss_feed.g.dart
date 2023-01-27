// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RssResponse _$$_RssResponseFromJson(Map<String, dynamic> json) =>
    _$_RssResponse(
      status: json['status'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => RssItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_RssItem _$$_RssItemFromJson(Map<String, dynamic> json) => _$_RssItem(
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

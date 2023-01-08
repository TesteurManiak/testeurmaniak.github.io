// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RssResponse _$$_RssResponseFromJson(Map<String, dynamic> json) =>
    _$_RssResponse(
      status: json['status'] as String?,
      feed: RssFeed.fromJson(json['feed'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => RssItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RssResponseToJson(_$_RssResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'feed': instance.feed,
      'items': instance.items,
    };

_$_RssFeed _$$_RssFeedFromJson(Map<String, dynamic> json) => _$_RssFeed(
      url: json['url'] as String?,
      title: json['title'] as String?,
      link: json['link'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_RssFeedToJson(_$_RssFeed instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'link': instance.link,
      'author': instance.author,
      'description': instance.description,
      'image': instance.image,
    };

_$_RssItem _$$_RssItemFromJson(Map<String, dynamic> json) => _$_RssItem(
      title: json['title'] as String?,
      pubDate: json['pubDate'] as String?,
      link: json['link'] as String?,
      guid: json['guid'] as String?,
      author: json['author'] as String?,
      thumbnail: json['thumbnail'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_RssItemToJson(_$_RssItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'pubDate': instance.pubDate,
      'link': instance.link,
      'guid': instance.guid,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'content': instance.content,
      'categories': instance.categories,
    };

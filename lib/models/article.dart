class Article {
  const Article({
    required this.title,
    required this.link,
    this.pubDate,
    this.thumbnail,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] as String?,
      link: json['link'] as String?,
      pubDate: DateTime.tryParse(json['pubDate'] as String? ?? ''),
      thumbnail: json['thumbnail'] as String?,
    );
  }

  final String? title;
  final String? link;
  final DateTime? pubDate;
  final String? thumbnail;
}

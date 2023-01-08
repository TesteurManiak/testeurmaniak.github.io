import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticleDescription extends StatelessWidget {
  final String description;

  const ArticleDescription(this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(
      data: description,
    );
  }
}

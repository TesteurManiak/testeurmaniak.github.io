import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkData {
  final IconData icon;
  final String url;

  const LinkData({this.icon = FontAwesomeIcons.link, required this.url});
}

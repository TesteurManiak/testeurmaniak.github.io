import 'package:flutter/material.dart';
import 'package:my_portfolio/style/text_styles.dart';

class CustomTab extends StatelessWidget {
  final String label;

  CustomTab({required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(label, style: TextStyles.tab),
    );
  }
}

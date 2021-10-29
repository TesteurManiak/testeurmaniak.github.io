import 'package:flutter/material.dart';

import '../../style/text_styles.dart';

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(label, style: TextStyles.tab),
    );
  }
}

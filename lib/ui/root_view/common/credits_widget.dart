import 'package:flutter/material.dart';

class CreditsWidget extends StatelessWidget {
  const CreditsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Made with ',
            style: TextStyle(color: Colors.white),
          ),
          Icon(Icons.favorite, color: Colors.cyan, size: 16),
          Text(
            ' in Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

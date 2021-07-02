import 'package:flutter/material.dart';

class CreditsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Made with ',
            style: TextStyle(color: Colors.white),
          ),
          const Icon(Icons.favorite, color: Colors.cyan, size: 16),
          const Text(
            ' in Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

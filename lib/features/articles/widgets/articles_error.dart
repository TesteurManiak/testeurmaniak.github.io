import 'package:flutter/cupertino.dart';

class ArticlesError extends StatelessWidget {
  const ArticlesError(this.error, {super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}

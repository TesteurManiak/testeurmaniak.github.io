import 'package:flutter/material.dart';
import 'package:my_portfolio/core/size_utils.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: paddingVertical(size.height),
              horizontal: paddingHorizontal(size.width),
            ),
          ),
          onPressed: () => DefaultTabController.of(context)?.animateTo(4),
          child: const Text('Contact me'),
        ),
        SizedBox(width: spacing(size.width)),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: paddingVertical(size.height),
              horizontal: paddingHorizontal(size.width),
            ),
          ),
          onPressed: () => DefaultTabController.of(context)?.animateTo(3),
          child: const Text('Portfolio'),
        ),
      ],
    );
  }
}

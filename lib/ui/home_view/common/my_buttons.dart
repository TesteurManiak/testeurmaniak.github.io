import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/core/size_utils.dart';

class MyButtons extends ConsumerWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          onPressed: () {
            DefaultTabController.of(context)?.animateTo(4);
          },
          child: Text(context.strings.contact_me),
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

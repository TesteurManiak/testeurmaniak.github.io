import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/utils/size_utils.dart';

class MyButtons extends StatelessWidget {
  void _openContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Contact me'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.mail),
                SizedBox(width: 6),
                Expanded(child: SelectableText('rouxguillaume8@gmail.com')),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.phone),
                SizedBox(width: 6),
                SelectableText('+33 6 46 28 90 99'),
              ],
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
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
          onPressed: () => _openContactDialog(context),
          child: Text('Contact me'),
        ),
        SizedBox(width: spacing(size.width)),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: paddingVertical(size.height),
              horizontal: paddingHorizontal(size.width),
            ),
          ),
          onPressed: () => navigationBloc.goToPage(NavigationIndex.projects),
          child: Text('Portfolio'),
        ),
      ],
    );
  }
}

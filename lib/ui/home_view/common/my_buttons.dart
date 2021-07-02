import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/style/my_colors.dart';

class MyButtons extends StatelessWidget {
  double spacing(double width) => width * 0.01 > 8 ? width * 0.01 : 8.0;
  double paddingHorizontal(double width) =>
      width * 0.04 > 32 ? width * 0.04 : 32;
  double paddingVertical(double height) =>
      height * 0.02 > 28 ? height * 0.02 : 28;

  void _openContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectableText('rouxguillaume8@gmail.com'),
            SelectableText('+33 6 46 28 90 99'),
          ],
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(primary: MyColors.indicator),
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
            elevation: 0,
            primary: MyColors.indicator,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          onPressed: () => _openContactDialog(context),
          child: Text('Contact me'),
        ),
        SizedBox(width: spacing(size.width)),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.white),
            primary: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: paddingVertical(size.height),
              horizontal: paddingHorizontal(size.width),
            ),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          onPressed: () => navigationBloc.goToPage(NavigationIndex.projects),
          child: Text('Portfolio'),
        ),
      ],
    );
  }
}

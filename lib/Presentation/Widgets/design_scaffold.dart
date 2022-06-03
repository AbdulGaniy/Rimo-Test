import 'package:flutter/material.dart';

import '../../utils/utils.dart';


class DesignScaffold extends StatelessWidget {
  const DesignScaffold({
    Key? key,
    this.color = Colors.white,
    required this.body,
    this.horizontalPadding = 20,
    this.respectSafeArea = true,
  }) : super(key: key);

  final Widget body;
  final Color color;
  final double horizontalPadding;
  final bool respectSafeArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: screenWidth(context) * 0.05,
          ),
          children: [
            body,
          ],
        ),
      ),
    );
  }
}

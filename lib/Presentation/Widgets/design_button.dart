import 'package:flutter/material.dart';

import 'package:rimotest/utils/utils.dart';
import 'package:rimotest/utils/app_colors.dart';

import '../../utils/app_constants.dart';
import '../../utils/margin.dart';


class DesignButton extends StatelessWidget {
  const DesignButton({
    Key? key,
    required this.title,
    this.textColor = Colors.white,
    this.fontSize,
    required this.onPressed,
    this.fillColor = Colors.white,
    this.hasFillBoarder = true,
    this.hasBoarder = false,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final double? fontSize;
  final void Function() onPressed;
  final Color fillColor;
  final bool hasFillBoarder;
  final bool hasBoarder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: screenHeight(context) * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          color: hasFillBoarder ? fillColor : Colors.transparent,
          borderRadius: BorderRadius.circular(kButtonBorderRadius),
          boxShadow: [
            BoxShadow(
              color: kCuriousBlue.withOpacity(0.03),
              blurRadius: 6.0,
              offset: const Offset(0, 18),
            )
          ],
          border: hasBoarder
              ? Border.all(
                  color: kCuriousBlue,
                  width: 1,
                )
              : null,
        ),
        child: Padding(
          padding: hasFillBoarder
              ? EdgeInsets.symmetric(vertical: screenHeight(context) * 0.01)
              : EdgeInsets.zero,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize ?? 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

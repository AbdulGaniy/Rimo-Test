import 'package:rimotest/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rimotest/utils/app_colors.dart';
import '../../utils/app_constants.dart';


class DesignDropDownButton extends StatelessWidget {
  const DesignDropDownButton({
    Key? key,
    required this.dropDownValue,
    required this.dropDownList,
    required this.onChange,
    this.textColor = kBoulder,
  }) : super(key: key);

  final String dropDownValue;
  final List<String> dropDownList;
  final Function(String?)? onChange;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultTextFieldBorderRadius,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kCuriousBlue,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton<String>(
        value: dropDownValue,
        isExpanded: true,
        underline: const SizedBox(),
        elevation: 3,
        items: dropDownList
            .map((value) => DropdownMenuItem(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "HK Grotesk",
                      color: textColor,
                    ),
                  ),
                  value: value,
                ))
            .toList(),
        onChanged: onChange,
      ),
    );
  }
}

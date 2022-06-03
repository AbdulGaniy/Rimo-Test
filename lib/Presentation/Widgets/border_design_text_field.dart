import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rimotest/utils/app_colors.dart';

import '../../../utils/utils.dart';


class BorderDesignTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final Color fillColor;
  final double borderRadius;
  final Color borderColor;
  final Color? activeBorderColor;
  final double borderWidth;

  final String hintText;
  final TextStyle hintStyle;
  final Color cursorColor;
  final double length;
  final InputDecoration? prefixIcon;
  final bool acceptOnlyNumber;
  final bool showSuffixIcon;
  final double horizontalPadding;
  final TextAlign textAlign;
  final TextStyle style;
  final int? maxLength;

  final TextInputFormatter? inputFormatter;

  const BorderDesignTextField({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.name,
    required this.focusNode,
    required this.onFieldSubmitted,
    this.onChanged,
    this.fillColor = Colors.white,
    this.borderRadius = kDefaultBorderRadius,
    this.borderColor = kCuriousBlue,
    this.activeBorderColor,
    required this.validator,
    this.borderWidth = 3.0,
    this.length = 0.02,
     this.prefixIcon,
    required this.hintText,
    this.hintStyle = const TextStyle(
        color: kBoulder, fontSize: 16, fontWeight: FontWeight.w400),
    this.cursorColor = Colors.black,
    this.acceptOnlyNumber = false,
    this.showSuffixIcon = false,
    this.horizontalPadding = kDefaultTextFieldPadding,
    this.textAlign = TextAlign.start,
    this.style = const TextStyle(
        color: kCodGray, fontSize: 16, fontWeight: FontWeight.w400),
    this.maxLength,
    this.inputFormatter,
  }) : super(key: key);

  @override
  State<BorderDesignTextField> createState() => _BorderDesignTextFieldState();
}

class _BorderDesignTextFieldState extends State<BorderDesignTextField> {
  //Declare ValueNotifier to update the suffix icon
  late final ValueNotifier<bool> _obscureTextValueNotifier;

  bool obscureText = true;

  @override
  void initState() {
    //Initialize the valueNotifier
    _obscureTextValueNotifier = ValueNotifier(false);
    super.initState();
  }

  @override
  void dispose() {
    //Dispose the valueNotifier
    _obscureTextValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      focusNode: widget.focusNode,
      cursorColor: widget.cursorColor,
      inputFormatters: widget.acceptOnlyNumber
          ? [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ]
          : widget.inputFormatter != null
          ? [widget.inputFormatter!]
          : [],
      obscureText: widget.showSuffixIcon && obscureText,
      obscuringCharacter: '*',
      textAlign: widget.textAlign,
      style: widget.style,
      maxLength: widget.maxLength,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        counterText: '',
        contentPadding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding,
          vertical: screenHeight(context) * widget.length,
        ),
        border: const OutlineInputBorder(),
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder().copyWith(
          borderSide: BorderSide(
            color: kCuriousBlue,
            width: widget.borderWidth,
          ),
        ),
        suffixIcon: _buildSuffixIcon(),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(kDefaultTextFieldBorderRadius),
      ),
      borderSide: BorderSide(
        color: widget.borderColor,
        width: widget.borderWidth,
      ),
    );
  }

  _buildSuffixIcon() {
    return widget.showSuffixIcon
        ? GestureDetector(
      onTap: () {
        setState(
              () {
            obscureText = !obscureText;
          },
        );
      },
      child: Icon(
        widget.showSuffixIcon && obscureText
            ? Icons.visibility_off_outlined
            : Icons.remove_red_eye_rounded,
        size: 20,
        color: kCodGray,
      ),
    )
        : null;
  }
}

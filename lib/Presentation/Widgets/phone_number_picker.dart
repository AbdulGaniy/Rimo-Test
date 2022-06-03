
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rimotest/utils/app_colors.dart';

import '../../utils/utils.dart';

class PhoneNumberPicker extends StatefulWidget {
  const PhoneNumberPicker({
    Key? key,
    required this.focusNode,
    required this.controller,
    this.onFieldSubmitted,
    this.validator,
    this.onInputChanged,
    this.onInputValidated,
    this.borderColor = kCuriousBlue,
    this.borderWidth = 1.0,
    this.countries = const [],
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController controller;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final Function(PhoneNumber)? onInputChanged;
  final Function(bool)? onInputValidated;
  final Color borderColor;
  final double borderWidth;
  final List<String> countries;

  @override
  State<PhoneNumberPicker> createState() => _PhoneNumberPickerState();
}

class _PhoneNumberPickerState extends State<PhoneNumberPicker> {
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth(context) * 0.25,
          height: MediaQuery.of(context).size.height*0.06,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: widget.focusNode.hasFocus ? kCuriousBlue: widget.borderColor,
            ),
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
        ),

        InternationalPhoneNumberInput(
          onInputChanged: widget.onInputChanged,
          onInputValidated: widget.onInputValidated,
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            leadingPadding: 10,
            trailingSpace: true,
          ),
          countries: widget.countries,
          cursorColor: Colors.black,
          focusNode: widget.focusNode,
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          selectorTextStyle: const TextStyle(color: Colors.black),
          initialValue: number,
          textFieldController: widget.controller,
          formatInput: false,
          keyboardType: const TextInputType.numberWithOptions(
            signed: true,
            decimal: true,
          ),
          validator: widget.validator,
          inputDecoration: InputDecoration(
            border: _outlineInputBorder(),
            enabledBorder: _outlineInputBorder(),
            focusedBorder: _outlineInputBorder().copyWith(
              borderSide: BorderSide(
                color: kCuriousBlue,
                width: widget.borderWidth,

              ),
            ),
            contentPadding:  EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height*0.020,
              vertical: MediaQuery.of(context).size.height*0.020,
            ),
            hintText: '07012345678',
            hintStyle: const TextStyle(color: kBoulder),
          ),
          onFieldSubmitted: widget.onFieldSubmitted,
          // onSaved: (PhoneNumber number) {
          //   print('On Saved: $number');
          // },
        ),
      ],
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
    setState(() {
      this.number = number;
    });
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(kDefaultTextFieldBorderRadius),
      ),
      borderSide: BorderSide(
        color: kCuriousBlue,
        width: 3,
      ),
    );
  }
}

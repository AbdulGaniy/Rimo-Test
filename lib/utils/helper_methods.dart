import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void requestFocusFor(BuildContext context, FocusNode focusNode,
    {int afterNumberSeconds = 0}) {
  Timer(
    Duration(milliseconds: afterNumberSeconds * 100),
        () => FocusScope.of(context).requestFocus(focusNode),
  );
}

void removeCurrentFocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

String? validatePassword(String value) {
  RegExp regex =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Enter valid password';
    } else {
      return null;
    }
  }
}

String? validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (value.isEmpty) {
    return 'Please enter email';
  } else {
    if ((!regex.hasMatch(value))) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }
}

String getErrorMessage(Exception error) {
  String errorMessage = '';
  if (error is SocketException) {
    errorMessage = 'No internet connection';
  } else {
    errorMessage = 'An unexpected error occurred, please try again';
  }
  return errorMessage;
}

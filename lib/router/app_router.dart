

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Screens/auth/Forgot/forgot_password_screen.dart';
import 'package:rimotest/Presentation/Screens/auth/Login/login_screen.dart';
import 'package:rimotest/Presentation/Screens/auth/Register/register.dart';
import 'package:rimotest/Presentation/Screens/onBoarding.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_svgs.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings settings){
    final Widget screen;
    switch(settings.name){
      case kOnBoarding:
        screen = const OnBoarding();
        break;
      case kLogin:
        screen = const LoginScreen();
        break;
      case kRegister:
        screen = const Register();
        break;
      case kResetPassword:
        screen = const ForgotPassword();
        break;
      default:
        screen = const Scaffold();
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
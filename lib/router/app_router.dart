

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Screens/auth/Forgot/forgot_password_screen.dart';
import 'package:rimotest/Presentation/Screens/auth/Login/login_screen.dart';
import 'package:rimotest/Presentation/Screens/auth/Register/register.dart';
import 'package:rimotest/Presentation/Screens/onBoarding.dart';
import 'package:rimotest/Presentation/Screens/splashScreen.dart';
import 'package:rimotest/Presentation/dashboard.dart';
import 'package:rimotest/Presentation/myOrderScreen.dart';
import 'package:rimotest/Presentation/newOrderScreen.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_svgs.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings settings){
    final Widget screen;
    switch(settings.name){
      case kSplash:
        screen = const SplashScreen();
        break;
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
      case kDashboard:
        screen = const Dashboard();
        break;
      case kMyOrder:
        screen = const MyOrder();
        break;
      case kNewOrder:
        screen = const NewOrderScreen();
        break;
      default:
        screen = const Scaffold();
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rimotest/Presentation/Widgets/border_design_text_field.dart';
import 'package:rimotest/Presentation/Widgets/design_back_button.dart';
import 'package:rimotest/Presentation/Widgets/design_button.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';
import 'package:rimotest/Presentation/Widgets/phone_number_picker.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rimotest/utils/app_images.dart';
import 'package:http/http.dart' as http;
import 'package:rimotest/utils/app_svgs.dart';
import 'package:flutter/services.dart';

import '../../../../utils/margin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 // controllers
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;

  //nodes
  late FocusNode _phoneNumberFocusNode;
  late FocusNode _passwordNode;


  //initialize them
  void initState(){
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();

    _phoneNumberFocusNode = FocusNode();
    _passwordNode = FocusNode();
    super.initState();
  }

  void dispose(){
    _phoneNumberController.dispose();
    _phoneNumberFocusNode.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      horizontalPadding: 30,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const DesignBackButton(
             size: 30,
           ),
            YMargin(MediaQuery.of(context).size.height * 0.1),
            const Text(
              'Enter Phone Number',
               style: TextStyle(
                 fontFamily: "Inter",
                 fontSize: 22,
                 fontWeight: FontWeight.w800,
               ),
            ),
            const Text(
              'Login with your registered\nphone number',
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            YMargin(MediaQuery.of(context).size.height * 0.03),
          PhoneNumberPicker(focusNode: _phoneNumberFocusNode, controller: _phoneNumberController),
            YMargin(MediaQuery.of(context).size.height * 0.03),
         BorderDesignTextField(
             controller: _passwordController,
             focusNode: _passwordNode,
             onFieldSubmitted: (_) {},
             validator: (_) {},
             hintText: 'Password'),
            YMargin(MediaQuery.of(context).size.height * 0.03),
            DesignButton(title: "Login", onPressed: () {
              login();
            }, fillColor: kCuriousBlue,),
            YMargin(MediaQuery.of(context).size.height * 0.03),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, kResetPassword);
                },
                child:const  Text(
                  'Forgot Password?',
                ),
              ),
            ),
            YMargin(MediaQuery.of(context).size.height * 0.03),

            Center(
              child: GestureDetector(
                child: Image.asset(kBiometric)
              ),
            )
          ],
        ));
  }
  Future<void> login() async{
    if(_phoneNumberController.text.isNotEmpty && _passwordController.text.isNotEmpty){
      var response = await http.post(Uri.parse("http://handova.ddns.net:9000/api/login"), body: ({
        'username': _phoneNumberController.text,
        'password': _passwordController.text,
      }));
      if(response.statusCode == 200){
        Navigator.pushNamed(context, kDashboard);
      }else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid Credentials")));
      }
    } else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Blank Field not allowed")));
    }
  }
}
// class LocalAuthApi{
//   static final _auth = LocalAuthentication();
//
//   static bool hasBiometrics() aasync {
//    try{
//   return await _auth.canCheckBiometrics;
//   }on PlatformException catch (e){
//      return false;
//   }
//   }
//
//   static Future<bool> authenticate() async{
//     final isAvailable = await hasBiometrics();
//     if(!isAvailable) return false;
//     try{
//       return await _auth.authenticateWithBiometrics(
//         localizedReason: 'Scan FingerPrint to Authenticate',
//         useErrorDialogs: true,
//         stickyAuth: true,
//       );
//     }
//
//   }
// }

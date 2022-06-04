import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rimotest/Presentation/Widgets/border_design_text_field.dart';
import 'package:rimotest/Presentation/Widgets/design_back_button.dart';
import 'package:rimotest/Presentation/Widgets/design_button.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';
import 'package:rimotest/Presentation/Widgets/phone_number_picker.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:rimotest/utils/app_images.dart';
import 'package:rimotest/utils/app_svgs.dart';

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
              Navigator.pushNamed(context, kDashboard);
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
}

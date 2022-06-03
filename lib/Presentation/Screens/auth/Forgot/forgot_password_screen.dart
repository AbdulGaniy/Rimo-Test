import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/margin.dart';
import '../../../Widgets/border_design_text_field.dart';
import '../../../Widgets/design_back_button.dart';
import '../../../Widgets/design_button.dart';
import '../../../Widgets/design_scaffold.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _passwordController;
  late FocusNode _passwordNode;

  void initState(){
    _passwordController = TextEditingController();

    _passwordNode = FocusNode();
    super.initState();
  }
  void dispose(){
    _passwordController.dispose();
    _passwordNode.dispose();
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
              'Reset Password',
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              'Enter your Registered email address\nto recover your password',
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            YMargin(MediaQuery.of(context).size.height * 0.03),
            BorderDesignTextField(
                controller: _passwordController,
                focusNode: _passwordNode,
                onFieldSubmitted: (_) {},
                validator: (_) {},
                hintText: 'Password'),
            YMargin(MediaQuery.of(context).size.height * 0.03),
            DesignButton(title: "Reset Password", onPressed: () {}, fillColor: kCuriousBlue,),


          ],
        ));
  }
}

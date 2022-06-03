
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rimotest/Presentation/Widgets/border_design_text_field.dart';
import 'package:rimotest/Presentation/Widgets/design_back_button.dart';
import 'package:rimotest/Presentation/Widgets/design_button.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';
import 'package:rimotest/Presentation/Widgets/phone_number_picker.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:rimotest/utils/margin.dart';

import 'nextofKinScreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();






  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _dateOfBirthController;
  late TextEditingController _homeAddressController;
  late TextEditingController _passwordController;

  late FocusNode _fullNameNode;
  late FocusNode _emailNode;
  late FocusNode _phoneNumberNode;
  late FocusNode _dateOfBirthNode;
  late FocusNode _homeAddressNode;
  late FocusNode _passwordNode;

  void initState(){
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _dateOfBirthController = TextEditingController();
    _homeAddressController = TextEditingController();
    _passwordController = TextEditingController();

    _fullNameNode = FocusNode();
    _emailNode = FocusNode();
    _phoneNumberNode = FocusNode();
    _dateOfBirthNode  = FocusNode();
    _homeAddressNode = FocusNode();
    _passwordNode = FocusNode();

    super.initState();
  }

  void dispose(){
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _dateOfBirthController.dispose();
    _homeAddressController.dispose();
    _passwordController.dispose();

    _fullNameNode.dispose();
    _emailNode.dispose();
    _phoneNumberNode.dispose();
    _dateOfBirthNode.dispose();
    _homeAddressNode.dispose();
    _passwordNode.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return Form(
      key: formKey,
      child: GestureDetector(
        onVerticalDragCancel: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> NextOfKin()));
        },
        child: DesignScaffold(
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                const  DesignBackButton(),
                 XMargin(MediaQuery.of(context).size.width*0.2),
                 const Text(
                   'Register',
                   style: TextStyle(
                     fontFamily: "Inter",
                     fontSize: 22,
                     fontWeight: FontWeight.w800,
                   ),
                 )
               ],
             ),
            YMargin(MediaQuery.of(context).size.height*0.05),
            const Text(
              "Personal Information",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
             YMargin(MediaQuery.of(context).size.height*0.03),
             BorderDesignTextField(
                 controller: _fullNameController,
                 focusNode: _fullNameNode,
                 onFieldSubmitted: (_){},
                 validator: (_){},
                 hintText: "Full Name"),
             YMargin(MediaQuery.of(context).size.height*0.03),
             BorderDesignTextField(
                 controller: _emailController,
                 focusNode: _emailNode,
                 onFieldSubmitted: (_){},
                 validator: (_){},
                 hintText: "Email Address"),
             YMargin(MediaQuery.of(context).size.height*0.03),
             PhoneNumberPicker(focusNode: _phoneNumberNode, controller: _phoneNumberController),
             YMargin(MediaQuery.of(context).size.height*0.03),
             BorderDesignTextField(
                 controller: _dateOfBirthController,
                 focusNode: _dateOfBirthNode,
                 onFieldSubmitted: (_){},
                 validator: (_){},
                 hintText: "Date of Birth"),
             YMargin(MediaQuery.of(context).size.height*0.03),
             BorderDesignTextField(controller: _homeAddressController,
                 focusNode: _homeAddressNode,
                 length: 0.05,
                 onFieldSubmitted: (_){},
                 validator: (_){},
                 hintText: "Home Address / City"),
             YMargin(MediaQuery.of(context).size.height*0.03),
             BorderDesignTextField(controller: _passwordController,
                 focusNode: _passwordNode,
                 onFieldSubmitted: (_){},
                 validator: (_){},
                 showSuffixIcon: true,
                 hintText: "Create Password"),
             YMargin(MediaQuery.of(context).size.height*0.02),
             const Center(
               child: Text(
                 "Scroll for more" ,
               ),
             ),
             YMargin(MediaQuery.of(context).size.height*0.02),
             DesignButton(title: "Next", onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> NextOfKin()));
             }, fillColor: kCuriousBlue,)
           ],
        ),
        ),
      ),
    );
  }
}





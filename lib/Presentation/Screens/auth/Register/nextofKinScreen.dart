import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Screens/auth/Register/documentsconfirmationScreen.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/margin.dart';
import '../../../Widgets/border_design_text_field.dart';
import '../../../Widgets/design_back_button.dart';
import '../../../Widgets/design_button.dart';
import '../../../Widgets/design_scaffold.dart';
import '../../../Widgets/phone_number_picker.dart';

class NextOfKin extends StatefulWidget {
  const NextOfKin({Key? key}) : super(key: key);

  @override
  State<NextOfKin> createState() => _NextOfKinState();
}

class _NextOfKinState extends State<NextOfKin> {
  late TextEditingController _nextofKinfullNameController;
  late TextEditingController _nextofKinRelationshipController;
  late TextEditingController _nextofKinphoneNumberController;
  late TextEditingController _nextofKinemailController;
  late TextEditingController _nextofKinHomeAddressController;

  late FocusNode _nextofKinfullNameNode;
  late FocusNode _nextofKinRelationshipNode;
  late FocusNode _nextofKinphoneNumberNode;
  late FocusNode _nextofKinemailNode;
  late FocusNode _nextofKinHomeAddressNode;

  void initState(){
    _nextofKinemailController = TextEditingController();
    _nextofKinfullNameController = TextEditingController();
    _nextofKinphoneNumberController = TextEditingController();
    _nextofKinRelationshipController = TextEditingController();
    _nextofKinHomeAddressController = TextEditingController();

    _nextofKinemailNode = FocusNode();
    _nextofKinfullNameNode = FocusNode();
    _nextofKinHomeAddressNode = FocusNode();
    _nextofKinphoneNumberNode = FocusNode();
    _nextofKinRelationshipNode = FocusNode();

    super.initState();
  }
  void dispose(){

    _nextofKinHomeAddressController.dispose();
    _nextofKinRelationshipController.dispose();
    _nextofKinphoneNumberController.dispose();
    _nextofKinfullNameController.dispose();
    _nextofKinemailController.dispose();

    _nextofKinphoneNumberNode.dispose();
    _nextofKinRelationshipNode.dispose();
    _nextofKinHomeAddressNode.dispose();
    _nextofKinRelationshipNode.dispose();
    _nextofKinfullNameNode.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragCancel: () {

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
              "Next of Kin Information",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            YMargin(MediaQuery.of(context).size.height*0.03),
            BorderDesignTextField(
                controller: _nextofKinfullNameController,
                focusNode: _nextofKinfullNameNode,
                onFieldSubmitted: (_){},
                validator: (_){},
                hintText: "Full Name"),
            YMargin(MediaQuery.of(context).size.height*0.03),
            BorderDesignTextField(
                controller: _nextofKinRelationshipController,
                focusNode: _nextofKinRelationshipNode,
                onFieldSubmitted: (_){},
                validator: (_){},
                hintText: "Relationship"),
            YMargin(MediaQuery.of(context).size.height*0.03),
            PhoneNumberPicker(focusNode: _nextofKinphoneNumberNode, controller: _nextofKinphoneNumberController),
            YMargin(MediaQuery.of(context).size.height*0.03),

            BorderDesignTextField(
                controller: _nextofKinemailController,
                focusNode: _nextofKinemailNode,
                onFieldSubmitted: (_){},
                validator: (_){},
                hintText: "Email Address"),
            YMargin(MediaQuery.of(context).size.height*0.03),
            BorderDesignTextField(controller: _nextofKinHomeAddressController,
                focusNode: _nextofKinHomeAddressNode,
                length: 0.05,
                onFieldSubmitted: (_){},
                validator: (_){},
                hintText: "Home Address / City"),
            YMargin(MediaQuery.of(context).size.height*0.03),
            YMargin(MediaQuery.of(context).size.height*0.02),
            const Center(
              child: Text(
                "Scroll for more" ,
              ),
            ),
            YMargin(MediaQuery.of(context).size.height*0.02),
            DesignButton(title: "Next", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentsConfirmationScreen()));
            }, fillColor: kCuriousBlue,)
          ],
        ),
      ),
    );
  }
}
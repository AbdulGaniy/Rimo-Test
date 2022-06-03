import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Widgets/border_design_text_field.dart';
import 'package:rimotest/Presentation/Widgets/design_drop_down_button.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';

import '../../../../utils/margin.dart';
import '../../../Widgets/design_back_button.dart';

class DocumentsConfirmationScreen extends StatefulWidget {
  const DocumentsConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<DocumentsConfirmationScreen> createState() => _DocumentsConfirmationScreenState();
}

class _DocumentsConfirmationScreenState extends State<DocumentsConfirmationScreen> {
  final List<String> value = ['Select Vehicle', 'Bike', 'Vehicle'];
  String dropDownValue = 'Select Vehicle';
  late ValueNotifier<String> selectVehicleNotifier;
  late TextEditingController _vehicleNumberController;
  late FocusNode _vehicleNumberNode;

  void initState(){
    _vehicleNumberController = TextEditingController();
    _vehicleNumberNode = FocusNode();
    selectVehicleNotifier = ValueNotifier('select state');
    super.initState();
  }
  void dispose(){
    selectVehicleNotifier = ValueNotifier('select state');
    _vehicleNumberNode.dispose();
    _vehicleNumberController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
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
             "Documents Confirmation",
             style: TextStyle(
               fontFamily: "Inter",
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           const Text(
             "Kindly ensure you have all these \ndocuments available before you can\ncomplete your registration",
             style: TextStyle(
               fontFamily: "Inter",
               fontSize: 14,
               fontWeight: FontWeight.w500,
             ),
           ),
           YMargin(MediaQuery.of(context).size.height*0.03),
           DesignDropDownButton(dropDownValue: dropDownValue,
               dropDownList: value,
               onChange: (selectedValue) {
                 if (selectedValue != null && selectedValue.isNotEmpty) {
                   selectVehicleNotifier.value = selectedValue;
                 }
               }),
           YMargin(MediaQuery.of(context).size.height*0.03),
           DesignDropDownButton(dropDownValue: dropDownValue,
               dropDownList: value,
               onChange: (selectedValue) {
                 if (selectedValue != null && selectedValue.isNotEmpty) {
                   selectVehicleNotifier.value = selectedValue;
                 }
               }),
           YMargin(MediaQuery.of(context).size.height*0.03),
           BorderDesignTextField(controller: _vehicleNumberController,
               focusNode: _vehicleNumberNode,
               onFieldSubmitted: (_){},
               validator: (_){},
               hintText: "Vehicle Number")
         ],
       ),
    );
  }
}

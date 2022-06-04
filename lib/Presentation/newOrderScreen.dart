import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';

import '../utils/app_colors.dart';
import '../utils/margin.dart';
import 'Widgets/design_back_button.dart';

class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({Key? key}) : super(key: key);

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
                XMargin(MediaQuery.of(context).size.width*0.15),
                const Text(
                  'NEW ORDERS',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 22,
                    color: kHokeyPokey,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            YMargin(MediaQuery.of(context).size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "ORDER NO: 658C",

                ),
                const Text(
                    "TIME:03:45PM"
                ),

              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text(
                     '"Ojota New Garage, Ikorodu Road",',
                     style: TextStyle(
                       color: Colors.white
                     ),
                   ),
                   Center(
                    child: Container(
                       height: 20,
                       width: 20,
                       decoration: BoxDecoration(
                         color: Colors.blue,
                       ),
                     ),
                   ),
                   Center(
                     child: Container(
                       height: 20,
                       width: 20,
                       decoration: BoxDecoration(
                         color: Colors.green,
                       ),
                     ),
                   ),
                   Text(
                     "House 8 Ikate Lekki, Lagos Island",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),

                 ],
              ),
              decoration: BoxDecoration(
                color: Colors.black
              ),

            ),
         Divider(

         )
          ],
        )
    );
  }
}

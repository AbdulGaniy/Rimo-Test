import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Widgets/design_button.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';
import 'package:rimotest/utils/app_images.dart';

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
              width: MediaQuery.of(context).size.width*2,
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
            YMargin(MediaQuery.of(context).size.height * 0.02),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Image.asset(kCall),
             Image.asset(kText)
           ],
         ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'DELIVERY FEE',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Debit Card",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      fontFamily: "Inter",

                    ),
                  ),
                  Text(
                    "Debit Card",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      fontFamily: "Inter",

                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: kMercury,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
             Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Item Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      fontFamily: "Inter",

                    ),
                  ),
                  Text(
                    "v",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      fontFamily: "Inter",

                    ),
                  )
                ],
              ),
            ),
            YMargin(MediaQuery.of(context).size.height * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DesignButton(
                  fillColor: kBoulder,
                    width: 0.7,
                    title: "4 mins to arrive at pick up", onPressed: (){
                }),
                XMargin(MediaQuery.of(context).size.width*0.03),
                Container(
                  alignment: Alignment.center,
                  height:MediaQuery.of(context).size.height* 0.07,
                  width: MediaQuery.of(context).size.width * 0.16,
                  child: Icon(Icons.subdirectory_arrow_right_rounded, size: 50, color: Colors.white,),
                  decoration: BoxDecoration(
                      color: kMineShaft,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.white

                      )

                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}

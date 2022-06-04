import 'package:flutter/material.dart';
import 'package:rimotest/Presentation/Widgets/design_scaffold.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:rimotest/utils/app_images.dart';

import '../utils/app_constants.dart';
import '../utils/margin.dart';
import 'Widgets/design_back_button.dart';
import 'Widgets/design_button.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
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
                  'MY ORDERS',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 22,
                    color: kHokeyPokey,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            YMargin(MediaQuery.of(context).size.height*0.02),
            const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'New Order',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  decoration: BoxDecoration(
                    color: kMercury,
                    borderRadius: BorderRadius.circular(
                      kDefaultBorderRadius,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "N2800",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          XMargin(MediaQuery.of(context).size.width * 0.3),
                         const  Text(
                            "5.3Km",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF828282),
                            ),
                          ),
                        ],
                      ),
                      YMargin(screenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Container(
                           height: 20,
                           width: 20,
                           decoration: BoxDecoration(
                             color: Colors.blue,
                           ),
                         ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.chevron_right, color: Colors.black,),
                        ],
                      ),
                      YMargin(MediaQuery.of(context).size.height* 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.circle_outlined, color: Colors.black,),
                        ],
                      ),
                      YMargin(screenHeight(context) * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         DesignButton(
                           width: 0.3,
                           fillColor: kTeaGreen,
                           textColor: kParsley,
                           title: "Accept",
                           onPressed: () {
                             Navigator.pushNamed(context, kNewOrder);
                           },

                         ),
                          DesignButton(
                            width: 0.3,
                            fillColor: kYourPink,
                            textColor: kPersianRed,
                            title: "Reject",
                            onPressed: () {  },

                          ),

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  decoration: BoxDecoration(
                    color: kMercury,
                    borderRadius: BorderRadius.circular(
                      kDefaultBorderRadius,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "N2800",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          XMargin(MediaQuery.of(context).size.width * 0.3),
                          const  Text(
                            "5.3Km",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF828282),
                            ),
                          ),
                        ],
                      ),
                      YMargin(screenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.chevron_right, color: Colors.black,),
                        ],
                      ),
                      YMargin(MediaQuery.of(context).size.height* 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.circle_outlined, color: Colors.black,),
                        ],
                      ),
                      YMargin(screenHeight(context) * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DesignButton(
                            width: 0.3,
                            fillColor: kTeaGreen,
                            textColor: kParsley,
                            title: "Accept",
                            onPressed: () {  },

                          ),
                          DesignButton(
                            width: 0.3,
                            fillColor: kYourPink,
                            textColor: kPersianRed,
                            title: "Reject",
                            onPressed: () {  },

                          ),

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: kMercury,
              thickness: 1,
              indent: screenWidth(context) * 0.001,
              endIndent: screenWidth(context) * 0.01,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Active Order',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                '3:43 PM',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Stack(
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  decoration: BoxDecoration(
                    color: kTeaGreen,
                    borderRadius: BorderRadius.circular(
                      kDefaultBorderRadius,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "N2800",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          XMargin(MediaQuery.of(context).size.width * 0.3),
                          const  Text(
                            "5.3Km",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF828282),
                            ),
                          ),
                        ],
                      ),
                      YMargin(screenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.chevron_right, color: Colors.black,),
                        ],
                      ),
                      YMargin(MediaQuery.of(context).size.height* 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Ojota New Garage, Ikorodu Road",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "HK Grotesk",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.circle_outlined, color: Colors.black,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

          ],
        ));
  }
}

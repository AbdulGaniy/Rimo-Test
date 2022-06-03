import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_images.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_svgs.dart';
import '../../utils/margin.dart';
import '../Widgets/design_button.dart';
import '../Widgets/design_scaffold.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      body: Column(
        children: [
          // SizedBox(height: MediaQuery.of(context).size.height*0.18,),
          Image.asset(kAppLogo,
          height: screenHeight(context) * 0.05,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          SvgPicture.asset(
            kOnboarding,
            height: screenHeight(context) * 0.4,

          ),

          const Center(
            child: Text(
              'Drivers App',
              style: TextStyle(
                color: kCuriousBlue
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          DesignButton(
            title: 'New Driver',
            fillColor: kCuriousBlue,
            onPressed: () {
              Navigator.pushNamed(
                context,
                kRegister,
              );
            },
          ),
          YMargin(screenWidth(context) * 0.04),
          DesignButton(
            title: 'Login',
            hasFillBoarder: true,
            hasBoarder: true,
            fillColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                kLogin,
              );
            },
          ),
        ],
      ),
    );
  }
}

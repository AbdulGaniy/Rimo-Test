
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rimotest/router/route_link.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:rimotest/utils/app_svgs.dart';

import '../utils/app_images.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static const _initialCameraPositon = CameraPosition(
    target: LatLng(6.465422, 3.406448),
    zoom: 11.5,
  );
  late GoogleMapController _googleMapController;

  @override
  void dispose(){
    _googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPositon,
          onMapCreated: (controller) => _googleMapController = controller,
        ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            right: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              alignment: Alignment.center,
              height:MediaQuery.of(context).size.height* 0.05,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                'N2800',
                style: TextStyle(
                   color: Colors.white,
                  fontFamily: "Inter",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              decoration: BoxDecoration(
                color: kMineShaft,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: kMineShaft,
                  width: 3
                )

              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            left: MediaQuery.of(context).size.width * 0.01,
            child: SvgPicture.asset(kTab),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            right: MediaQuery.of(context).size.width * 0.03,
            child: Container(
              alignment: Alignment.center,
              height:MediaQuery.of(context).size.height* 0.05,
              width: MediaQuery.of(context).size.width * 0.11,
              child: Icon(Icons.volume_up_sharp, color: Colors.black,),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.white

                  )

              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: MediaQuery.of(context).size.width * 0.04,
            child: Container(
              alignment: Alignment.center,
              height:MediaQuery.of(context).size.height* 0.09,
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset(kGift),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: Colors.white

                  )

              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            right: MediaQuery.of(context).size.width * 0.04,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, kMyOrder);
              },
              child: Container(
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
            ),
          ),
          // const Spacer(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0,
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                  Text(
                    'Hi, Richard',
                    style: TextStyle(
                      fontFamily: "Cabin",
                      fontSize: 21,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                  Text(
                    'You are offline',
                    style: TextStyle(
                      fontFamily: "Cabin",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                    ]
                  ),
                  Container(
                    alignment: Alignment.center,
                    height:MediaQuery.of(context).size.height* 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const Text(
                      'Go Online',
                      style: TextStyle(
                        color: kParsley,
                        fontFamily: "Inter",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: kTeaGreen,
                        borderRadius: BorderRadius.circular(10),


                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,

              ),
            )
          ),

        ],
      ),

    );
  }
}

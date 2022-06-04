import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomAppBar(
        child: SpinKitCircle(
          size: 140,
          color: Colors.black,
          // controller: AnimationController(vsync:this  ,duration: const Duration(milliseconds: 1200)),
        )
      ),
    );
  }
}
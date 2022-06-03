import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rimotest/utils/app_svgs.dart';

import '../../utils/app_images.dart';

class DesignBackButton extends StatelessWidget {
  const DesignBackButton({
    Key? key,
    this.color = Colors.black,
     this.size = 18,
  }) : super(key: key);

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: const Icon(Icons.cancel, size: 50,)
    );
  }
}

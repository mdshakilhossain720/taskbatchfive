import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';
class BackGrounWidget extends StatelessWidget {
  const BackGrounWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsPath.backgroundImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
         child,


        ],
      ),
    );
  }
}

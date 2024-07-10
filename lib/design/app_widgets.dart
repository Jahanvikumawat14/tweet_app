import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          height: 80,
          width: 290,
          child: SvgPicture.asset(
            "assets/logo.svg",
            color: Colors.white,
          )),
    );
  }
}

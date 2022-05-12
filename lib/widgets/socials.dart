// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'; 
import '../theme/colors.dart';

class SocialMedia extends StatelessWidget {
  final String? social;
  final Function()? onTap;
  // ignore: use_key_in_widget_constructors
  const SocialMedia({required this.onTap, required this.social});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 98, //double.infinity,
        height: 63,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppColors.textFieldColor),
        child: Center(
          child: Image(
            image: Svg(
              'assets/svgs/$social.svg',
              size: Size(39, 39),
            ),
          ),
        ),
      ),
    );
  }
}

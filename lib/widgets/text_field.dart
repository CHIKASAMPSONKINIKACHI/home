// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'; 
import '../theme/colors.dart';
import '../theme/text.dart';


class UserTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffix;

  // ignore: use_key_in_widget_constructors
  const UserTextField({
    required this.keyboardType,
    required this.hintText,
    this.obscureText = false,
    this.suffix,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 329,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.textFieldColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            offset: Offset(6, 4),
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
          child: TextField(
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: smallStyle(AppColors.bBlackColor, 0.5),
              suffix: suffix,
            ),
            obscuringCharacter: '*',
            obscureText: obscureText,
            
          ),
        ),
      ),
    );
  }
}

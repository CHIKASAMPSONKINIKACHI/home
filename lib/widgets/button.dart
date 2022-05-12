// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/text.dart';

class Button extends StatefulWidget {
  final String text;
  final Function()? onTap;
  final Color color;
  // ignore: use_key_in_widget_constructors
  const Button({required this.onTap, required this.text, required this.color});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 329, //double.infinity,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: widget.color,
          boxShadow: [
            BoxShadow(
              color: AppColors.blueColor.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(6, 4),
            )
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: normalStyle(AppColors.lightWhiteColor, 1),
          ),
        ),
      ),
    );
  }
}
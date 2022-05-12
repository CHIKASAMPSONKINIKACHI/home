// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'; 
import 'package:home/widgets/login.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            Positioned(
              right: 0,
              top: -5,
              child: Image(
                image: Svg(
                  'assets/svgs/right_logo.svg',
                  size: Size(252, 350),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 125, 40, 30), //top:133 bottom:55
              child: Login(),
            )
          ]),
        ),
      ),
    );
  }
}


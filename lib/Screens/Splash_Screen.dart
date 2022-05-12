// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/brand.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var next = const Duration(seconds: 3);
    Future.delayed(next, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const FullScreen()),
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueColor,
        body: Center(
          child: Brand(AppColors.lightRedColor),
        ),
      ),
    );
  }
}

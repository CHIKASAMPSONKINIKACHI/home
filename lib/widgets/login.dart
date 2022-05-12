// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:home/screens/sign_up_screen.dart'; 
import '../theme/colors.dart';
import '../theme/text.dart';
import 'brand.dart';
import 'button.dart';
import 'socials.dart';
import 'text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailAddress = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(children: [
          Brand(AppColors.blueColor),
          YMargin(60), //69
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Login to your account',
                style: normalStyle(AppColors.bBlackColor, 1)),
          ),
          YMargin(14),
          UserTextField(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email address',
            controller: emailAddress,
          ),
          YMargin(30), //30
          UserTextField(
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: password,
            //suffix: ,
          ),
          YMargin(30), //31
          Button(
            color: emailAddress.text == "" ||
                    phoneNumber.text == "" ||
                    password.text == ""
                ? AppColors.blueColor.withOpacity(0.7)
                : AppColors.blueColor,
            onTap: () => setState(() {
              if (emailAddress.text == "" ||
                  phoneNumber.text == "" ||
                  password.text == "") {
              } else {
                print(emailAddress.text);
                print(phoneNumber.text);
                print(password.text);
              }
            }),
            text: 'Sign in',
          ),
          YMargin(50), //56
          Text('• Or sign in with •',
              style: smallStyle(AppColors.bBlackColor, 0.5)),
          YMargin(18),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SocialMedia(
              onTap: () {
                print('Sign in with google');
              },
              social: 'google',
            ),
            SocialMedia(
              onTap: () {
                print('Sign in with facebook');
              },
              social: 'facebook',
            ),
            SocialMedia(
              onTap: () {
                print('Sign in with twitter');
              },
              social: 'twitter',
            )
          ]),
          YMargin(50), //69
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "• Don't have an account? ",
              style: smallStyle(AppColors.bBlackColor, 0.5),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Sign up',
                  style: smallStyle(
                    AppColors.blueColor,
                    0.7,
                  )),
            )
          ])
        ]),
      ),
    );
  }
}

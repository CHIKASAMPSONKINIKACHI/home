// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart'; 
import '../theme/colors.dart';
import '../theme/text.dart';
import 'brand.dart';
import 'button.dart';
import 'socials.dart';
import 'text_field.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailAddress = TextEditingController();

  final TextEditingController confirmPassword= TextEditingController();

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
          YMargin(25), //30
          UserTextField(
            keyboardType: TextInputType.visiblePassword,
            hintText: 'Password',
            obscureText: true,
            controller: password,
          ),
          YMargin(25), //30
          UserTextField(
            hintText: 'Confirm password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: confirmPassword, 
          ),
          YMargin(25), //30
          Button(
            color: emailAddress.text == "" ||
                    confirmPassword.text == "" ||
                    password.text == ""
                ? AppColors.blueColor.withOpacity(0.7)
                : AppColors.blueColor,
            onTap: () => setState(() {
              if (emailAddress.text == "" ||
                  confirmPassword.text == "" ||
                  password.text == "") {
              } else if(password.text != confirmPassword.text){
                 print('Check your password!');
              }else{
                print(emailAddress.text); 
                print(password.text);
              }
            }),
            text: 'Sign up',
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
        ]),
      ),
    );
  }
}

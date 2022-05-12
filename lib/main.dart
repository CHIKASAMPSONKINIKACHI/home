import 'package:flutter/material.dart';
import 'package:home/screens/Splash_Screen.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        fontFamily: 'GothamMedium',
      ),
      home: const SplashScreen(),
    );
  }
}

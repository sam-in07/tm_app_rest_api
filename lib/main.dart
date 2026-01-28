import 'package:flutter/material.dart';
import 'package:tm_app_rest_api/screen/onboarding/emailVerificationScreen.dart';
import 'package:tm_app_rest_api/screen/onboarding/loginScreen.dart';
import 'package:tm_app_rest_api/screen/onboarding/pinVerificationScreen.dart';
import 'package:tm_app_rest_api/screen/onboarding/registrationScreen.dart';
import 'package:tm_app_rest_api/screen/onboarding/setPasswordScreen.dart';
import 'package:tm_app_rest_api/screen/onboarding/splashScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TMP',

      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/':(context)=> splashScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),



      },
    );
  }
}


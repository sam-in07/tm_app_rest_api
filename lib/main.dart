import 'package:flutter/material.dart';
import 'screen/splashScreen.dart';
import 'screen/pinVerificationScreen.dart';
import 'screen/registrationScreen.dart';
import 'screen/setPasswordScreen.dart';
import 'screen/loginScreen.dart';
import 'screen/emailVerificationScreen.dart';


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
        '/':(context)=> pinVerificationScreen(),
        '/':(context)=> registrationScreen(),
        '/':(context)=> setPasswordScreen(),
        '/':(context)=> loginScreen(),
        '/':(context)=> emailVerificationScreen(),

      },
    );
  }
}


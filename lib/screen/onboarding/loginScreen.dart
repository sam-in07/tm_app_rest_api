import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tm_app_rest_api/style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Get Started with",
                     style: Head1Text(colorDarkBlue),


                )
              ],

            ),
          )
        ],
      ),
    );
  }
}


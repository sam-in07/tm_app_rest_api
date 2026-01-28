import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tm_app_rest_api/style/style.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //niche akta layer upore arekta layer design a background modhe akta design ase
      body: Stack(
        children: [
          //first bg
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                //assets/images/logo.svg
                alignment: Alignment.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

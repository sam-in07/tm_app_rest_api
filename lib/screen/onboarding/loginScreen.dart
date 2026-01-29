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
                    "Set Password",
                     style: Head1Text(colorDarkBlue),
                ),
                SizedBox(height: 1,),
                Text(
                  "Minimum length password 8 character with Latter and number combination ",
                  style: Head2Text(colorLightGray),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: AppInputDecoration("Password"),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: AppInputDecoration("Confirm Password"),
                ),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Confirm'),
                    onPressed: () {

                    },
                  ),
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}


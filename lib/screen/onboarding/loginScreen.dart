import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tm_app_rest_api/api/apiClient.dart';
import 'package:tm_app_rest_api/style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  Map<String,String> FormValues={"email":"", "password":""};
  bool Loading = false ;

  InputOnChnage(Mapkey,Textvalue){
    setState(() {
      FormValues.update(Mapkey, (value) => Textvalue);
    });
  }

 FormOnSubmit() async{
   if(FormValues['email']!.length==0) {
     ErrorToast("Email is required");

   }
   else if (FormValues['password']!.length==0) {
     ErrorToast("password is required");

   }
   else {
     setState(() {
       Loading = true;
     });
     bool Result = await LoginRequest(FormValues);

     if(Result ==  true){
       //navigate to dashboard page
     }
     if(Result ==  false){
       //navigate to dashboard page
       setState(() {
         Loading = false;
       });
     }

     setState(() {
       Loading = false;
     });
   }
 }


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
                ),
                SizedBox(height: 1,),
                Text(
                  "Learn with Rabbil hasan",
                  style: Head2Text(colorLightGray),
                ),
                SizedBox(height: 20,),

                TextFormField(
                  onChanged: (Textvalue){
                   InputOnChnage("email",Textvalue);
                  },

                  decoration: AppInputDecoration("Email Address"),

                ),

                SizedBox(height: 20,),

                TextFormField(
                  onChanged: (Textvalue){
                    InputOnChnage("password",Textvalue);
                  },


                  decoration: AppInputDecoration("Password"),

                ),


                SizedBox(height: 20,),


                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Confirm'),
                    onPressed: () {
                       FormOnSubmit();
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


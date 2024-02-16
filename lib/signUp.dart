import 'package:flutter/material.dart';
import 'package:travelling_app/utilities.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8AC8F7),
      body: Stack(
        children: [
          Container(

            child: Align(
              alignment: Alignment.topLeft,

              child: Container(
                  child: Opacity(opacity:.2,child: Image.asset("1.jpg.jpg"

                  ))),),
          ),


          Positioned(
            left: Utilities.w(context)*.06,
            top: Utilities.h(context)*.25,
            child: Text("Join Us! 👋" ,style: TextStyle(
                fontWeight: FontWeight.bold , fontSize: 18
            ),),
          )
          , Positioned(
            left: Utilities.w(context)*.06,
            top: Utilities.h(context)*.28,
            child:
            Container(
              child: Text(
                "Create an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: Utilities.w(context)*.08
              , top : Utilities.h(context)*.4, right: Utilities.w(context)*
                  .08,),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email"),
                Container(
                  padding: EdgeInsets.only(left: Utilities.w(context)*.02),

                  child: TextField( controller:EmailController ,decoration: InputDecoration(hintText: "john"
                      "doe@gmail.com"
                      "abc"),),
                  decoration: BoxDecoration(border: Border.all(color: Colors
                      .blue, width: 3,) , borderRadius: BorderRadius.circular(5)),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: Utilities.w(context)*.08
              , top : Utilities.h(context)*.52, right: Utilities.w(context)
                  *.08,),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password"),
                Container(
                  padding: EdgeInsets.only(left: Utilities.w(context)*.02),

                  child: TextField( controller: PasswordController,decoration: InputDecoration(hintText: "123"
                      "abc"),),
                  decoration: BoxDecoration(border: Border.all(color: Colors
                      .blue, width: 3,) , borderRadius: BorderRadius.circular(5)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: Utilities.w(context)*.08
              , top : Utilities.h(context)*.64, right: Utilities.w(context)
                  *.08,),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number"),
                Container(
                  padding: EdgeInsets.only(left: Utilities.w(context)*.02),

                  child: TextField( controller: phoneController,decoration: InputDecoration(hintText: "033xxxxxxxxxxx"),),
                  decoration: BoxDecoration(border: Border.all(color: Colors
                      .blue, width: 3,) , borderRadius: BorderRadius.circular(5)),
                )
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(left: Utilities.w(context)*.02,
              right: Utilities.w(context)*.02,
              top: Utilities.h(context)*.8,
            ),
            child: Row(

              children: [
                Container(
                  child: Text("Already have an account?" ),
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "Login");
                        },
                        child: Text("Login" , style: TextStyle
                          (fontSize: 14,fontWeight: FontWeight.w700,color: Colors.blue,decoration: TextDecoration.underline,
                            decorationColor:
                            Colors.blue)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          ,
          Positioned(

            bottom: Utilities.h(context)*0.08,
            right: Utilities.w(context)*.1,
            left: Utilities.w(context)*.1,



            child: InkWell(
              onTap: (){
                Utilities.signUp(EmailController.text, PasswordController.text, context);

              },


              child: Container(

                height: Utilities.h(context)*.06,
                width: Utilities.w(context)*1,
                decoration: BoxDecoration(color: Color(0xff0067FF)),
                child: Center(
                  child: Text("SignUp"),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
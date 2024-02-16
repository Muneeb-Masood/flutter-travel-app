import 'package:flutter/material.dart';
import 'package:travelling_app/utilities.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),backgroundColor: Colors.blue[100] , leading: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "/");

        },
        child: Icon(Icons.arrow_back_ios_rounded),
      ),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Utilities.h(context)*.1),
            child: Expanded(
              child: Column(
                children: [
                  Container(

                    child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("img_11.png"),
                      ),
                    ),
                  ),
                  Text("muneebned844@gmail.com",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
                bottom: 10,
              top: 10
            ),
            width: Utilities.w(context)*.5,
            height: Utilities.h(context)*.06,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),

            ),
            child:Center(
              child: Text("Upgrade to PRO",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold
              ),),
            )
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: Utilities.h(context)*.1),
              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10
                    ),
                    width: Utilities.w(context)*.63,
                    height: Utilities.h(context)*.06,
                    decoration: BoxDecoration(
                      color: Color(0x1f4D5652),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.settings) ,Text("Settings",
                        style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                      ),),Container(margin: EdgeInsets.only(left: Utilities.w(context)*.2),child: Icon(Icons.navigate_next))],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 10
                    ),
                    width: Utilities.w(context)*.63,
                    height: Utilities.h(context)*.06,
                    decoration: BoxDecoration(
                      color: Color(0x1f4D5652),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.privacy_tip) ,Text("Privacy",style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                      ),),Container(margin: EdgeInsets.only(left: Utilities.w(context)*.2),child: Icon(Icons.navigate_next))],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                        bottom: 10
                    ),
                    width: Utilities.w(context)*.63,
                    height: Utilities.h(context)*.06,
                    decoration: BoxDecoration(
                      color: Color(0x1f4D5652),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.help) ,Text("Help",style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                      ),),Container(margin: EdgeInsets.only(left: Utilities.w(context)*.2),child: Icon(Icons.navigate_next))],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                        bottom: 10
                    ),
                    width: Utilities.w(context)*.63,
                    height: Utilities.h(context)*.06,
                    decoration: BoxDecoration(
                      color: Color(0x1f4D5652),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.supervised_user_circle_outlined) ,Text("Invite",style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                      ),),Container(margin: EdgeInsets.only(left: Utilities.w(context)*.2),child: Icon(Icons.navigate_next))],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                        bottom: 10
                    ),
                    width: Utilities.w(context)*.63,
                    height: Utilities.h(context)*.06,
                    decoration: BoxDecoration(
                      color: Color(0x1f4D5652),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.logout) ,Text("Logout",style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                      ),),Container(margin: EdgeInsets.only(left: Utilities.w(context)*.2),child: Icon(Icons.navigate_next))],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utilities{
  static List<String> hotelNames = [
    "Marriott Marquis",
    "Hilton Garden Inn",
    "Hyatt Regency",
    "Sheraton Grand",
    "InterContinental",
    "Westin",
    "Ritz-Carlton",
    "Four Seasons",
    "Waldorf Astoria",
    "St. Regis",
  ];
  static signUp(String email , String password , BuildContext context) async{
   try {
      UserCredential? credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password).then((value){

        showDialog(context: context, builder: (context){

          return AlertDialog(
            title: Text("Success"),
            content: Column(
              children: [
                Image.asset("verified-icon-4.jpg"),
                Text("Welcome ${value.additionalUserInfo!.username}Account created Successfully")
              ],
            ),
          );
        });
      });
      
      Navigator.pushNamed(context, "Home");

    }
    catch(e){
      showDialog(context: context, builder: (context){

        return AlertDialog(
          title: Text("Error"),
          content: Column(
            children: [
              Image.asset("verified-icon-4.jpg"),
              Text(e.toString())
            ],
          ),
        );

      });

    }
  }
  static late bool? isLoggedInUti;
  static Future<bool> getLoggedInValueUti() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedInUti = prefs.getBool('isLoggedIn');
    if(isLoggedInUti==null) return false;
    return true;


  }

  static signIn(String email, String password, BuildContext context) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print("Success");

      print("Success");

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Success"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("verified-icon-4.jpg"),
                Text(
                  "Welcome back ${credential.user!.email}\nLogin Successfully",
                ),
              ],
            ),
          );
        },
      );

      Navigator.pushNamed(context, "Home");
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('email', email);

    } catch (error) {
      print("Error ye ha: $error");
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("verified-icon-4.jpg"),
                Text(
                  error.toString(),
                ),
              ],
            ),
          );
        },
      );
      // Handle error, show error message, etc.
    }
  }


  // signIn(String email , String password) async{
  //   UserCredential credentials = await
  //   FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)
  //   .then((value){
  //
  //   });
  //
  //
  //
  //
  // }

  static List<String> descriptions = [
    "Experience luxury and sophistication at its finest. Our hotel offers elegant accommodations, exquisite dining, and impeccable service.",
    "Discover comfort and convenience in the heart of the city. With modern amenities and friendly staff, your stay with us will be memorable.",
    "Escape to a world of relaxation and rejuvenation. Our resort-style hotel features lush gardens, pristine pools, and serene spa treatments.",
    "Indulge in a seamless blend of timeless elegance and contemporary style. From our spacious rooms to our award-winning restaurants, every detail is designed for your comfort.",
    "Immerse yourself in the vibrant energy of the city. Our hotel is located in the heart of downtown, surrounded by shopping, dining, and entertainment.",
    "Unwind in luxury and tranquility. With breathtaking views and personalized service, your stay with us will be nothing short of extraordinary.",
    "Experience the epitome of luxury and sophistication. From our opulent suites to our Michelin-starred dining, every moment with us is unforgettable.",
    "Escape to paradise and experience true bliss. Our beachfront resort offers pristine sands, crystal-clear waters, and world-class amenities.",
    "Step into a world of timeless elegance and unparalleled service. With luxurious accommodations and exquisite dining options, your stay with us will be nothing short of magical.",
    "Discover the height of luxury and refinement. Our hotel offers impeccable service, exquisite decor, and unparalleled attention to detail.",
  ];
static List<bool> firtOne = [true,true,true,true];
static List<bool> secondOne = [true,true,true,true];



  static List<double> ratings = List.generate(10, (_) => (Random().nextDouble() * 5).roundToDouble());

  static List<int> prices = List.generate(10, (_) => Random().nextInt(500) + 100);


  static List Images = ["img_6.png","img_7.png","img_8.png","img_9.png",
  ];
  static bool Location = true;
  static bool Hotels = false;
  static bool Adventures = false;
  static bool Food = false;
  static bool Streets = false;
  static bool Museums = false;

 static List<bool> ans =[true,false,false,false,false,false,];


  static bool Home = true;
  static bool Booking = false;
  static bool Fav = false;
  static bool Profile = false;
  static List<String> hotelBookWala=[] ;
  static List<String> hotelKiPrice = [];
  static List<String> navList = ["Location" , "Hotels" , "Adventures", "Food" ,
  "Streets" , "Museums" ];
  static double w(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double h(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  
}
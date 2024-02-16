import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/Login.dart';
import 'package:travelling_app/booking.dart';
import 'package:travelling_app/fav.dart';
import 'package:travelling_app/home_screen.dart';
import 'package:travelling_app/hotels.dart';
import 'package:travelling_app/newBookings.dart';
import 'package:travelling_app/profile.dart';
import 'package:travelling_app/signUp.dart';
import 'package:travelling_app/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'concept.dart';
import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute: "/",
      routes: {
        "/" :(context) => SplashScreen(),
        // "/"    : (context) => Booking("hotelName",
        //     "Experience lux"
        //         "ury and sophistication "
        //         "at its finest. Our hote"
        //         "l offers elegant accommodations"
        //         ", exquisite dining, and impeccable serviceExperience"
        //         " luxury and sophistication at its finest. Our hotel"
        //         " offers elegant accommodations, exquisite d"
        //         "ining, and impecc"
        //         "able service",
        //     "price", "rating", "img_12.png"),
        "Home" : (context) => HomeScreen(),
        "Login" : (context) => Login(),
        "Hotels ":(context) => Hotel(),
        "newBookings" : (context) => NewBooking(),
        "fav":(context) =>Favourite(),
        "profile" :(context) => Profile(),
      // Booking("hotelName",
        //             "Experience luxury and sophistication at its finest Our hotel offers elegant accommodations, exquisite dining, and impeccableDiscover comfort and convenience in the heart of the city. With modern amenities and friendly staff, your stay with us wi",
        //             "444",
        //             "rating",
        //             "img_12.png")

      },
    )
  );

}
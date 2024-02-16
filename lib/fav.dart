import 'package:flutter/material.dart';
import 'package:travelling_app/utilities.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bookings"),backgroundColor: Colors.blue[100] , leading: InkWell(
        onTap: (){
          Navigator.pop(context);

        },
        child: Icon(Icons.arrow_back_ios_rounded),
      ),),
        body: Utilities.hotelBookWala.isEmpty?Center(
          child: Text("No Favourites yet" ,style: TextStyle(color: Colors.blue,
          fontWeight: FontWeight.bold,fontSize: 18),),
        ):Container());
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/utilities.dart';

class NewBooking extends StatefulWidget {
  const NewBooking({super.key});

  @override
  State<NewBooking> createState() => _NewBookingState();
}

class _NewBookingState extends State<NewBooking> {
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
        child: Text("No Bookings yet" ,style: TextStyle(  fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue),),
      ):Container());
  }
}

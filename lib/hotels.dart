import 'package:flutter/material.dart';
import 'package:travelling_app/booking.dart';
import 'package:travelling_app/utilities.dart';

class Hotel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView.builder(itemCount:10,itemBuilder: (context , index){
        return InkWell(
        // final hotelName ;
        // final hotelDes;
        // final rating ;
        // final price ;
          onTap: (){
            // Navigator.pushNamed(context, "Booking",arguments: {
            //
            //   "hotelName" : Utilities.hotelNames[index],
            //   "hotelDes" :Utilities.descriptions[index],
            //   "rating" :Utilities.ratings[index],
            //   "price" :Utilities.prices[index]
            //
            //
            //
            // });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                Booking(Utilities.hotelNames[index],
                    Utilities.descriptions[index],
                    Utilities.prices[index].toString(),
                    Utilities.ratings[index].toString() , "img_12.png")));
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: Utilities.h(context)*.01),
            color: Color(0x1f3A544F),

            // color: Color,

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Utilities.w(context)*.02,
                      right: Utilities.w(context)*.01)


                  ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),

                height: 120,width: 120,
                child: Image.asset("img_12.png",fit: BoxFit.fill,),
              ),
                SizedBox(width: Utilities.w(context)*.07,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Utilities.hotelNames[index] ,style: TextStyle(
                        color: Colors.black , fontStyle: FontStyle.normal , fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 5,),
                      Text(Utilities.descriptions[index].split('.')[0],
                          style: TextStyle(
                              color: Colors.black54 ,fontSize: 12, fontStyle: FontStyle.normal , fontWeight: FontWeight.w700
                          )),
                      SizedBox(height: 10,),
                      Text("\$"+Utilities.prices[index].toString(), style: TextStyle(
                          color: Colors.black , fontStyle: FontStyle.normal , fontWeight: FontWeight.w700
                      ))

                    ],
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Utilities.w(context)*.06)
                  ,
                    child: Text((Utilities.ratings[index]+.2).toString()+"/5",  style: TextStyle(
                        color: Colors.black , fontStyle: FontStyle.italic , fontWeight: FontWeight.w700
                    )),
                   )


               ],
            ),
          ),
        );}),
    ));
  }
}

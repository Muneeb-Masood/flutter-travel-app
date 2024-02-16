import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/utilities.dart';

class Booking extends StatelessWidget {
  const Booking(this.hotelName, this.hotelDes, this.price, this.rating, this.image);
  final hotelName;
  final hotelDes;
  final rating;
  final price;
  final image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(

                  // color: Colors.red,
                ),

                width: Utilities.w(context)*1,
                margin: EdgeInsets.only(top: Utilities.h(context) * .02),
                child: ClipRRect( // Use ClipRRect to apply the border radius to the image
                  borderRadius: BorderRadius.circular(56),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: Utilities.h(context) * .027),
                  child: Column(
                    children: [
              
                      Container(
                        // color: Colors.deepOrange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Utilities.w(context) * 1,
                              height: 100,
                              // color: Colors.orange,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            hotelName.toString(),
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: CupertinoColors.systemYellow,
                                              ),
                                              Text(
                                                rating.toString() + "/5" + " (355 Reviews)",
                                                style: TextStyle(
                                                    fontFamily: 'ABeeZee',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: const Text(
                                          "Show map",
                                          style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic, fontSize: 16),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(hotelDes.toString() ,
                              style: TextStyle(
                              fontFamily: 'ABeeZee' , fontSize: 12 , fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
                              color: Color(0xff3A544F)
                            ),),
                            Row(
                              children: [
                                Text(
                                  "Read more",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee' , fontSize: 12 , fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
                                      color: Colors.blue
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.read_more, color: Colors.blue),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Facilities", style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold
                                  , fontFamily: 'Montserrat'
                              ),),
                            ),
                            Container(
                              height: 92, // Fixed height for the facility icons
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                        BorderRadius.circular(16),
                                        color: Color(0x1f3A544F),
                                    ),
                                    margin: EdgeInsets.only(right: Utilities.w(context) * .07 , left: 16),
                                    child: Image.asset(Utilities.Images[index]),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Utilities.h(context)*.05),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          fontFamily: 'ABeeZee' , fontSize: 14 , fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text(
                                      "\$"+price,
                                      style: TextStyle(color: Color(0xff2DD7A4), fontFamily: 'Montserrat' , fontWeight: FontWeight.w700, fontSize: 24),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              child: Container(
                                height: Utilities.h(context) * .08,
                                width: Utilities.w(context) * .6,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Book Now ",
                                        style: TextStyle(
                                            fontFamily: 'ABeeZee' , fontSize: 16 , fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
                                            color: Colors.white
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward_outlined ,color: Colors.white,)
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Utilities.h(context) * .001),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

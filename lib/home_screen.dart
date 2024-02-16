import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelling_app/booking.dart';
import 'package:travelling_app/utilities.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen();







  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
late bool? isLoggedIn ;
late String? email;
Future<bool> getLoggedInValue() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isLoggedIn = prefs.getBool('isLoggedIn');
  if(isLoggedIn==null) {
    return false;
  }
  return true;


}
void getEmailValue() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email');

}
class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getLoggedInValue(),
      builder: (context , AsyncSnapshot<bool> snapshot) {
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator(),);
        }
        else{
          print(snapshot.data);
          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Bottom navigation items
                    InkWell(
                      onTap: () {
                        Utilities.Home = true;
                        Utilities.Booking = false;
                        Utilities.Fav = false;
                        Utilities.Profile = false;
                        setState(() {});
                      },
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor:
                          Utilities.Home ? Colors.blue : Colors.white,
                          child: Icon(
                            Utilities.Home ? Icons.home_outlined : Icons.home,
                            color: Utilities.Home ? Colors.white : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Utilities.Booking = true;
                        Utilities.Home = false;
                        Utilities.Fav = false;
                        Utilities.Profile = false;
                        setState(() {});
                        Navigator.pushNamed(context, "newBookings");
                      },
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor:
                          Utilities.Booking ? Colors.blue : Colors.white,
                          child: Icon(
                            Utilities.Booking
                                ? Icons.airplane_ticket
                                : Icons.airplane_ticket_outlined,
                            color: Utilities.Booking ? Colors.white : Colors
                                .blue,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Utilities.Fav = true;
                        Utilities.Booking = false;
                        Utilities.Home = false;
                        Utilities.Profile = false;
                        setState(() {});
                        Navigator.pushNamed(context, "fav");
                      },
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Utilities.Fav ? Colors.blue : Colors
                              .white,
                          child: Icon(
                            Utilities.Fav ? Icons.favorite : Icons
                                .favorite_border_outlined,
                            color: Utilities.Fav ? Colors.white : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    isLoggedIn == null ?
                    InkWell(
                        onTap: () {
                          Utilities.Profile = true;
                          Utilities.Booking = false;
                          Utilities.Fav = false;
                          Utilities.Home = false;
                          setState(() {});
                          Navigator.pushNamed(context, "profile");
                        },
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor:
                            Utilities.Profile ? Colors.blue : Colors.white,
                            child: Icon(
                              Utilities.Profile
                                  ? Icons.manage_accounts_rounded
                                  : Icons.manage_accounts_outlined,
                              color: Utilities.Profile ? Colors.white : Colors
                                  .blue,
                            ),
                          ),
                        )
                    ) :
                    Container(
                      height: 0,
                      width: 0,
                    ),
                  ],
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: Utilities.h(context) * 0.03),
                    padding: EdgeInsets.symmetric(
                      horizontal: Utilities.w(context) * 0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore",
                          style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin, color: Colors.blue,)
                            ,
                            Text(
                              "Karachi, PK",
                              style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Utilities.w(context) * 0.05,
                    ),
                    child: Text(
                      "Aspen",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Utilities.h(context) * 0.015,
                        left: Utilities.w(context) * 0.1,
                        right: Utilities.w(context) * 0.1,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F8FE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: Utilities.h(context) * 0.06,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 7),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Find things to do",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: Utilities.w(context) * 0.05,
                      top: Utilities.h(context) * 0.04,
                      bottom: Utilities.h(context) * 0.04,
                    ),
                    height: Utilities.h(context) * 0.04,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            for (var i = 0; i < Utilities.ans.length; i++) {
                              if (i == index) {
                                Utilities.ans[i] = true;
                              }
                              else {
                                Utilities.ans[i] = false;
                              }
                              setState(() {

                              });
                            }

                            Navigator.pushNamed(context, "Hotels");
                          },
                          child: Container(
                            width: 100,
                            margin: EdgeInsets.only(
                              right: Utilities.w(context) * 0.05,
                            ),
                            padding: EdgeInsets.all(
                                Utilities.h(context) * 0.008),
                            child: Center(
                              child: Text(
                                Utilities.navList[index],
                                style: TextStyle(
                                  color: Utilities.ans[index] ? Color(
                                      0xff176FF2) : Color(0xffB8B8B8
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Utilities.ans[index] ? Color(0x1f176FF2)
                                  : Color(0xffF3F8FE),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.red,

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                          bottom: 8
                                      ),
                                      child: Text("Popular Now",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            fontFamily: 'Montserrat'

                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("See all", style: TextStyle(
                                          color: Colors.blue,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Container(
                                  height: 220,
                                  // color: Colors.green,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Stack(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Booking("Alley Palace",
                                                            Utilities
                                                                .descriptions[index],
                                                            Utilities
                                                                .prices[index]
                                                                .toString(),
                                                            Utilities
                                                                .ratings[index]
                                                                .toString(),
                                                            "img_12.png"),));
                                            },
                                            child: Container(
                                              height: 220,


                                              margin: EdgeInsets.only(
                                                right: 45,
                                                left: 20,
                                                top: Utilities.h(context) * .01,
                                                bottom: Utilities.h(context) *
                                                    .01,),
                                              child: Container(
                                                height: 200,
                                                child: Image.asset(
                                                  "img_12.png",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 175,


                                            decoration: BoxDecoration(

                                            ),
                                            padding: EdgeInsets.only(
                                              left: 27,
                                            ),
                                            margin: EdgeInsets.only(
                                              top: Utilities.h(context) * .15,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                            0xff4D5652),
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                      ),

                                                      child: Text(
                                                        "Alley Palace",
                                                        textAlign: TextAlign
                                                            .center,
                                                        style: TextStyle(

                                                            color: Colors.white,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight
                                                                .w400,
                                                            fontFamily: 'ABeeZee'
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Container(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.star,
                                                            color: CupertinoColors
                                                                .systemYellow,)
                                                          ,

                                                          Text(
                                                            "4.5",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontStyle: FontStyle
                                                                    .italic,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight
                                                                    .w400,
                                                                fontFamily: 'ABeeZee'
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                            0xff4D5652),
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                InkWell(onTap: () {
                                                  Utilities.firtOne[index] =
                                                  !Utilities.firtOne[index];
                                                  setState(() {

                                                  });
                                                },
                                                    child: Icon(
                                                        Utilities.firtOne[index]
                                                            ?
                                                        Icons
                                                            .favorite_border_outlined
                                                            : Icons.favorite,
                                                        color: !Utilities
                                                            .firtOne[index] ?
                                                        Colors.red : Colors
                                                            .black))
                                              ],
                                            ),
                                          ),

                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.only(
                              bottom: Utilities.h(context) * 0.08,
                              // right: Utilities.w(context) * 0.1,
                            ),
                            height: 180,


                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>
                                            Booking("Luxurious Aspen",
                                                Utilities.descriptions[index +
                                                    1],
                                                Utilities.prices[index + 1]
                                                    .toString(),
                                                Utilities.ratings[index + 1]
                                                    .toString(),
                                                "img_4.png"),));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: Utilities.w(context) * 0.09),

                                    decoration: BoxDecoration(
                                        color: Color(0x1f3A544F),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Container(
                                            height: 100,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(15),
                                            ),
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  "img_4.png",
                                                  // Adjusts the image to cover the entire container
                                                ),
                                                Positioned(
                                                  right: 1
                                                  ,
                                                  bottom: 5,

                                                  child: InkWell(onTap: () {
                                                    Utilities.secondOne[index] =
                                                    !Utilities.secondOne[index];
                                                    setState(() {

                                                    });
                                                  }, child: Icon(Utilities
                                                      .secondOne[index]
                                                      ?
                                                  Icons.favorite_border_outlined
                                                      : Icons.favorite,
                                                      color: !Utilities
                                                          .secondOne[index] ?
                                                      Colors.red : Colors
                                                          .black)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Luxurious Aspen",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            // Aligns the row content to the center horizontally
                                            children: [
                                              Image.asset("img_5.png"),
                                              Text(
                                                "Hot Deal",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        };
      }
    );
  }
}

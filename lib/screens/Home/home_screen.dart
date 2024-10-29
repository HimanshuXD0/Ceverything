import 'package:ceverything/constants/constants.dart';
import 'package:ceverything/screens/Hotels/hotel_screen.dart';
import 'package:ceverything/screens/auth/signup_screen.dart';
import 'package:ceverything/screens/flight/splash.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_svg/svg.dart';

import '../auth/Alertbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
         height: 90,
         width:100,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.white,
    ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: null, icon: SvgPicture.asset("assets/icons/home.svg",color: Colors.black,),),
          IconButton(onPressed: null, icon: SvgPicture.asset("assets/icons/calendr.svg",color: Colors.black,),),
           CircleAvatar(
            radius: 28,
            backgroundColor: kPrimaryColor,
            child: SvgPicture.asset("assets/icons/search.svg")),
          IconButton(onPressed: null, icon: SvgPicture.asset("assets/icons/chat.svg",color: Colors.black,),),
          IconButton(onPressed: null, icon: SvgPicture.asset("assets/icons/profile.svg",color: Colors.black,),),
        ],
        ),
      ),
    ),
        appBar: AppBar(
          actions: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(146, 253, 1, 1),
              child: Center(child: SvgPicture.asset("assets/icons/person.svg")),
            ),
          ],
          leadingWidth: 65,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(146, 245, 241, 241),
            child: Center(
                child: IconButton(
              onPressed: () {
                //Navigator.pop(context);
              },
              iconSize: 4,
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              color: Colors.black,
            )),
          ),
        ),
        body: Container(
            decoration:  BoxDecoration(color: Colors.white),
            padding:  EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Now C Everything",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                        //  iconSize: 50,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/search.svg',
                          ),
                        ),
                        hintText:
                            "Search hotel, tickets, doctor, medicines etc",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.4)),
                        contentPadding: const EdgeInsets.all(18),
                        fillColor: const Color(0xFFF5F5F5),
                        filled: true,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelScreen()));
                                  },
                                  child: Container(
                                    height: 56,
                                    width: 56,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: const Color.fromARGB(
                                            255, 20, 108, 231)),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/icons/hotels.svg",
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("Hotel")
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Flight()));
                                  },
                                  child: Container(
                                    height: 56,
                                    width: 56,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: const Color.fromARGB(
                                            255, 171, 73, 241)),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/icons/flight.svg",
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("Fight")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 232, 116, 49)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/movies.svg",
                                    ),
                                  ),
                                ),
                                const Text("Movies")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 245, 173, 57)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/hospital.svg",
                                    ),
                                  ),
                                ),
                                const Text("Hospitals")
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 28, 183, 31)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/trip.svg",
                                    ),
                                  ),
                                ),
                                const Text("Packages")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 41, 227, 241)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/restro.svg",
                                    ),
                                  ),
                                ),
                                const Text("Restaurants")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 244, 111, 238)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/shop.svg",
                                    ),
                                  ),
                                ),
                                const Text("Shopping")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 250, 30, 30)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/taxi.svg",
                                    ),
                                  ),
                                ),
                                const Text("Taxi")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Destination",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            
                            height: size.height*0.26,
                            width: size.width*0.4,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  DecorationImage(image: AssetImage("assets/images/mount.jpg"),
                              fit: BoxFit.cover
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Mount Bromo",style: TextStyle(color: Colors.white,fontSize: 20,),),
                                Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SvgPicture.asset("assets/images/locate.svg") ,
                                      SizedBox(width: 10,),
                                      Text("Jawa Tengah",style: TextStyle(color: Colors.white,fontSize: 15),)  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                      width: 16,
                    ),
                          Container(
                            height: size.height*0.26,
                            width: size.width*0.4,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  DecorationImage(image: AssetImage("assets/images/hotel.jpg"),
                              fit: BoxFit.cover
                              )
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Hotel de Java",style: TextStyle(color: Colors.white,fontSize: 20,),),
                                Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SvgPicture.asset("assets/images/locate.svg") ,
                                      SizedBox(width: 10,),
                                      Text("Jawa Tengah",style: TextStyle(color: Colors.white,fontSize: 15),)  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                      width: 16,
                    ),
                          Container(
                            height: size.height*0.26,
                            width: size.width*0.4,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  DecorationImage(image: AssetImage("assets/images/hotel2.jpg"),
                              fit: BoxFit.cover
                              )
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("vallys pllace ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                                Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SvgPicture.asset("assets/images/locate.svg") ,
                                      SizedBox(width: 10,),
                                      Text("Jawa Tengah",style: TextStyle(color: Colors.white,fontSize: 15),)  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                      width: 100,
                    ),
                        ],
                      ),
                    ),
                    SizedBox(height: 200,)
                  ]),
            )));
  }
}

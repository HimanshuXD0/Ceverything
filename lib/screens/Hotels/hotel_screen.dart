import 'package:ceverything/constants/constants.dart';
import 'package:ceverything/screens/auth/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_svg/svg.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen>
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
        resizeToAvoidBottomInset: false,

        // AppBar(

        //     elevation: 0,
        //     backgroundColor: Colors.white,
        //   title: Column(
        //       children: [
        //         Text(
        //           "Hotel",
        //           style: TextStyle(fontSize:0.006,color: Colors.black),
        //         ),
        //         SizedBox(
        //           height: 4,
        //         ),
        //         Text("Abidjan 200 hotels")
        //       ],
        //     )),
        //leading: Column(
        //   children: [
        //     Text(
        //       "Hotel",
        //      // style: TextStyle(fontSize:0.006),
        //     ),
        //     SizedBox(
        //       height: 4,
        //     ),
        //     Text("Abidjan 200 hotels")
        //   ],
        // )),
        body: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SafeArea(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Hotel",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Abidjan 200 hotels",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        SafeArea(
                            child: SvgPicture.asset(
                          "assets/icons/loc.svg",
                          height: 35,
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                       // icon: SvgPicture.asset("assets/icons/search.svg"),
                        hintText: "Search",
                        suffixIcon: IconButton(
                          //  iconSize: 50,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/cross.svg',
                            height: 19,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(18),
                        fillColor: const Color(0xFFF5F5F5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Amenities",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Filter by",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Sort by",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/mount.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Heden golf",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 25,
                                ),
                                SizedBox(width: 4,),
                                Text("3.9",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                                SizedBox(width: 14,),
                                Text("Reviews (200)",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                    
                    
                              ],
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Set in landscaped gardens overlooking the ...",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 8,),
                    
                            Row(
                              children: [
                               Text("25% OFF",
                                style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 177, 8),
                                  fontWeight: FontWeight.bold
                              ),),
                                SizedBox(width: 20,),
                                Text("127\$",
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              
                              ),),
                                SizedBox(width: 20,),
                             Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width*0.25,
                          height: size.height * 0.05,
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                                
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/hotel.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Onomo",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 25,
                                ),
                                SizedBox(width: 4,),
                                Text("4,6",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                                SizedBox(width: 14,),
                                Text("Reviews (200)",
                                style: TextStyle(
                                fontSize: 10,
                              ),),


                              ],
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Set in landscaped gardens overlooking the ...",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 8,),

                            Row(
                              children: [
                               Text("25% OFF",
                                style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 177, 8),
                                  fontWeight: FontWeight.bold
                              ),),
                                SizedBox(width: 20,),
                                Text("127\$",
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              
                              ),),
                                SizedBox(width: 20,),
                             Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width*0.25,
                          height: size.height * 0.05,
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                                
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                      SizedBox(height: 5,),
                       Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/mount.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "HoAdagiotel",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 25,
                                ),
                                SizedBox(width: 4,),
                                Text("3.3",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                                SizedBox(width: 14,),
                                Text("Reviews (200)",
                                style: TextStyle(
                                fontSize: 10,
                              ),),


                              ],
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Set in landscaped gardens overlooking the ...",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 8,),

                            Row(
                              children: [
                               Text("25% OFF",
                                style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 177, 8),
                                  fontWeight: FontWeight.bold
                              ),),
                                SizedBox(width: 20,),
                                Text("127\$",
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              
                              ),),
                                SizedBox(width: 20,),
                             Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width*0.25,
                          height: size.height * 0.05,
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                                
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:5,),
                       Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/hotel2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Sofitel",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 25,
                                ),
                                SizedBox(width: 4,),
                                Text("4.8",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                                SizedBox(width: 14,),
                                Text("Reviews (200)",
                                style: TextStyle(
                                fontSize: 10,
                              ),),


                              ],
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Set in landscaped gardens overlooking the ...",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 8,),

                            Row(
                              children: [
                               Text("25% OFF",
                                style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 177, 8),
                                  fontWeight: FontWeight.bold
                              ),),
                                SizedBox(width: 20,),
                                Text("127\$",
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              
                              ),),
                                SizedBox(width: 20,),
                             Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width*0.25,
                          height: size.height * 0.05,
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                                
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/mount.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "vallyes park ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 25,
                                ),
                                SizedBox(width: 4,),
                                Text("4.9",
                                style: TextStyle(
                                fontSize: 10,
                              ),),
                                SizedBox(width: 14,),
                                Text("Reviews (200)",
                                style: TextStyle(
                                fontSize: 10,
                              ),),


                              ],
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Set in landscaped gardens overlooking the ...",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 8,),

                            Row(
                              children: [
                               Text("73% OFF",
                                style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 177, 8),
                                  fontWeight: FontWeight.bold
                              ),),
                                SizedBox(width: 20,),
                                Text("300\$",
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              
                              ),),
                                SizedBox(width: 20,),
                             Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width*0.25,
                          height: size.height * 0.05,
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                                
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                     
                  ]),
            )));
  }
}

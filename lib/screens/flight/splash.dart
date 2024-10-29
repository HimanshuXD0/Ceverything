import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ceverything/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class Flight extends StatelessWidget {
  const Flight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: AnimatedSplashScreen(
        //splash: Center(child: Text("C Everything",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        splash: Container(
          child: Column(
            children: [
              SvgPicture.asset("assets/icons/udaan.svg",height: 37,),
                 Center(child: Text("Book Flight",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ],
          ),
        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        //splashIconSize: 100,
        backgroundColor: Color.fromARGB(255, 24, 89, 227),
        duration:3000,
        ),
    );
  }
}


import 'package:ceverything/screens/Home/home_screen.dart';
import 'package:ceverything/screens/onboard/show.dart';
import 'package:ceverything/screens/onboard/show1.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C Everything',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: Center(child: Text("C Everything",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        nextScreen: Show(),
        splashTransition: SplashTransition.fadeTransition,
        //splashIconSize: 100,
        backgroundColor: Color.fromARGB(255, 24, 89, 227),
        duration:3000,
        ),
      
    );
  }
}


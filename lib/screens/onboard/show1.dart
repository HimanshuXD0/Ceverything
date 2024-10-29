import 'package:ceverything/constants/constants.dart';
import 'package:flutter/material.dart';
class Show1 extends StatefulWidget {
  const Show1({super.key});

  @override
  State<Show1> createState() => _Show1State();
}

class _Show1State extends State<Show1> {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: size.height * 0.6,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/show1.jpg"),
                  fit: BoxFit.fill),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(38)),
        ),
        const SizedBox(
          height: 35,
        ),
        Image.asset(
          "assets/images/wide.jpg",
          height: size.height * 0.22,
          width: size.width * 8,
        ),
      ],
    ));
  }
}

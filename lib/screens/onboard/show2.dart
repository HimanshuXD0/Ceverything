import 'package:ceverything/constants/constants.dart';
import 'package:flutter/material.dart';

class Show2 extends StatefulWidget {
  const Show2({super.key});

  @override
  State<Show2> createState() => _Show2State();
}

class _Show2State extends State<Show2> {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: size.height * 0.6,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/show2.jpg"),
                  fit: BoxFit.fill),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(38)),
        ),
        const SizedBox(
          height: 35,
        ),
        Image.asset(
          "assets/images/explore.jpg",
          height: size.height * 0.22,
          width: size.width * 8,
        ),
      ],
    ));
  }
}

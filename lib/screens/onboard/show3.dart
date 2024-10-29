import 'package:ceverything/constants/constants.dart';
import 'package:flutter/material.dart';

class Show3 extends StatefulWidget {
  const Show3({super.key});

  @override
  State<Show3> createState() => _Show3State();
}

class _Show3State extends State<Show3> {
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
                  image: AssetImage("assets/images/show3.jpg"),
                  fit: BoxFit.fill),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(38)),
        ),
        const SizedBox(
          height: 35,
        ),
        Image.asset(
          "assets/images/people.jpg",
          height: size.height * 0.22,
          width: size.width * 8,
        ),
      ],
    ));
  }
}

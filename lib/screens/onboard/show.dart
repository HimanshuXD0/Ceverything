import 'package:ceverything/constants/constants.dart';
import 'package:ceverything/screens/auth/login_screen.dart';
import 'package:ceverything/screens/onboard/show1.dart';
import 'package:ceverything/screens/onboard/show2.dart';
import 'package:ceverything/screens/onboard/show3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Show extends StatefulWidget {
  const Show({super.key});
  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  final PageController _controller = PageController();
  int _currpage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.87,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                    _currpage=value;  
                });
                 
              },
              controller: _controller,
              children: const [
                Show1(),
                Show2(),
                Show3(),
              ],
            ),
          ),
          const SizedBox(height: 17),
          SmoothPageIndicator(
              controller: _controller, // PageController
              count: 3,
              effect:  ExpandingDotsEffect(
                  activeDotColor: kPrimaryColor,
                  dotColor: Colors.blue.withOpacity(0.3),
                  dotHeight: 9), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              if(_currpage<2){
              _controller.nextPage(
                  duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
            }
            else {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
            }
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: kPrimaryColor),
              width: size.width * 0.7,
              height: size.height * 0.06,
              child: _currpage == 0
                  ? const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
          )
        ],
      ),
    ));
  }
}

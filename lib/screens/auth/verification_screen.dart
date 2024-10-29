import 'package:ceverything/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../../utils/countdown.dart';
import '../Home/home_screen.dart';
import 'Alertbox.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int levelClock = 120;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );
    _controller.forward();
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
        appBar: AppBar(
          leadingWidth: 90,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(146, 245, 241, 241),
            child: Center(
                child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Colors.black,
            )),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                        child: Text(
                      "OTP Verification",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                    const SizedBox(
                      height: 12,
                    ),
                    const Center(
                        child: Text(
                      "Please check your email www.uihut@gmail.com to see the verification code",
                      style: TextStyle(color: Colors.grey),
                    )),
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "OTP Code",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    VerificationCode(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      itemSize: 50,
                      fillColor: const Color.fromARGB(146, 245, 241, 241),
                      onEditing: (bool value) {},
                      onCompleted: (String value) {},
                      textStyle:
                          TextStyle(fontSize: 20.0, color: Colors.blue[900]),
                      keyboardType: TextInputType.number,
                      underlineWidth: 0,
                      underlineUnfocusedColor: null,
                      underlineColor: Colors
                          .white, // If this is null it will use primaryColr: Colors.red from Theme
                      length: 4,
                      cursorColor: Colors
                          .blue, // If this is null it will default to the ambient
                      // clearAll is NOT required, you can delete it
                      // takes any widget, so you can implement your design
                    ),
                    const SizedBox(
                      height: 58,
                    ),
                    InkWell(
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeScreen()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimaryColor),
                          width: size.width,
                          height: size.height * 0.07,
                          child: const Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Resend code to",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        Countdown(
                          animation: StepTween(
                            begin: levelClock,
                            end: 0,
                          ).animate(_controller),
                        ),
                      ],
                    )
                  ]),
            )));
  }
}

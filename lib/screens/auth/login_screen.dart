import 'package:ceverything/constants/constants.dart';
import 'package:ceverything/screens/auth/forget_screen.dart';
import 'package:ceverything/screens/auth/signup_screen.dart';
import 'package:ceverything/screens/auth/verification_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _obscureText = true;
  var _color=Colors.grey;

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

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      _color=_obscureText?Colors.grey:Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(146, 245, 241, 241),
          child: Center(
              child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          )),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
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
                "Sign in now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 12,
              ),
              const Center(
                  child: Text(
                "Please sign in to continue our app",
                style: TextStyle(color: Colors.grey),
              )),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "joe@gamil.com",
                  contentPadding: EdgeInsets.all(18),
                  fillColor: Color(0xFFF5F5F5),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      _toggle();
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/eye.svg',
                      color: _color,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  fillColor: const Color(0xFFF5F5F5),
                  filled: true,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetScreen()));
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap:(){
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerificationScreen()));
                } ,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: kPrimaryColor),
                    width: size.width,
                    height: size.height * 0.07,
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                      TextSpan(
                          text: ' Sign up',
                          style: const TextStyle(
                              color: kPrimaryColor, fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()));
                            }),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Or connect",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      //backgroundColor: Colors.pink,
                      child: Center(
                          child: SvgPicture.asset(
                    "assets/icons/fb.svg",
                  ))),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      //backgroundColor: Colors.pink,
                      child: Center(
                          child: SvgPicture.asset(
                        "assets/icons/insta.svg",
                      ))),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 17, 135, 238),
                    //backgroundColor: Colors.pink,
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/icons/twit.svg",
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

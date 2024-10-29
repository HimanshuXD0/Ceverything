import 'package:ceverything/constants/constants.dart';
import 'package:ceverything/screens/auth/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_svg/svg.dart';

import 'Alertbox.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen>
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
      appBar: AppBar(
        leadingWidth: 90,
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  CircleAvatar(
          backgroundColor: Color.fromARGB(146, 245, 241, 241),
          child: Center(
              child: IconButton(onPressed: (){
                 Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios_new),
               color: Colors.black,
              )
              ),
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
                "Forgot password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 12,
              ),
              const Center(
                  child: Text(
                "Enter your email account to reset  your password",
                style: TextStyle( color: Colors.grey),
              )),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "joes@gmail.com",
                  contentPadding: EdgeInsets.all(18),
                  fillColor: Color(0xFFF5F5F5),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 58,
              ),
            
              InkWell(
                onTap: () => alert(context),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: kPrimaryColor),
                    width: size.width,
                    height: size.height * 0.07,
                    child: const Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
                ]  
          ),
        )));
  }
}

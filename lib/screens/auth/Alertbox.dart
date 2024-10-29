import 'package:ceverything/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


Future<void> alert(BuildContext context) async {

    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title:  Center(child: const Text('Check your email',style: TextStyle(fontWeight: FontWeight.bold),)),
        icon: Center(
          child: CircleAvatar(
            backgroundColor: kPrimaryColor,
            child: SvgPicture.asset("assets/icons/alert.svg",),),
        ),
        content: Text("We have send password recovery instruction to your email",textAlign: TextAlign.center)
       // contentPadding: EdgeInsets.only(left: 10),
       
      ),
    );
  } 



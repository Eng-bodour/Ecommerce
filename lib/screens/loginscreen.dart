// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:ecommerce/constant.dart';
import 'package:ecommerce/widget/custumtextfield.dart';
import 'package:ecommerce/widget/logofile.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  //Static for when use dont have instance
  //static String id = 'LogInScreen';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMainColor,
      body: ListView(
        children: [
          const LogoFile(),
          SizedBox(
            height: height * .1,
          ),
          CustomTextField(
            hintText: "Enter your Email",
            iconData: const Icon(
              Icons.email,
              color: KMainColor,
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          CustomTextField(
              hintText: 'Enter your Password',
              iconData: const Icon(
                Icons.lock,
                color: KMainColor,
              )),
          SizedBox(
            height: height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    //  side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                onPressed: () {},
                child: const Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(
            height: height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text(
                  'signup',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

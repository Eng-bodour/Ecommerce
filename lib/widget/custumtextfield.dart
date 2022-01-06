import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon iconData;

  String _errorMassage(String er) {
    switch (hintText) {
      case 'Enter your Name':
        return 'Name is Empty';
      case 'Enter your Email':
        return 'Email is Empty';
      case 'Enter your Password':
        return 'Password is Empty';
    }
    return '';
  }

  // ignore: prefer_const_constructors_in_immutables
  CustomTextField({Key? key, required this.hintText, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMassage(hintText);
          }
        },
        cursorColor: KSeconderyColor,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: iconData,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white)),
          filled: true,
          fillColor: KSeconderyColor,
        ),
      ),
    );
  }
}

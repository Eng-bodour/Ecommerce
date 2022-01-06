import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon iconData;

  // ignore: prefer_const_constructors_in_immutables
  CustomTextField({Key? key, required this.hintText, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: KSeconderyColor,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: iconData,
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

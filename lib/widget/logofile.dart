import 'package:flutter/material.dart';

class LogoFile extends StatelessWidget {
  const LogoFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        child: Stack(
          alignment: Alignment.center,
          children: const [
            //   Image(image: AssetImage('lib/images/login.png')),
            Text(
              'Image test',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
            ),
            Positioned(
              bottom: 0,
              child: Text(
                'Buy it',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}

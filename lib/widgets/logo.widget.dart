import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 60),
        Image.asset("assets/images/aog-white.png", height: 80),
        const SizedBox(height: 10),
        const Text(
          "Álcool ou Gasolina",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulder Display"),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({Key? key, required this.result, required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          Text(
            "Compensa utilizar X!",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulder Display",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          LoadingButton(
              busy: false,
              invert: true,
              function: reset,
              text: "CALCULAR NOVAMENTE"),
        ],
      ),
    );
  }
}

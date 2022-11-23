import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  var text = "";
  Function function;

  LoadingButton(
      {super.key,
      required this.busy,
      required this.invert,
      required this.text,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ))
        : Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              onPressed: function(),
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulder Display",
                ),
              ),
            ),
          );
  }
}

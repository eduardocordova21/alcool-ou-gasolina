import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  Input({super.key, required this.label, required this.controller});

  var label = "";
  var controller = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Big Shoulder Display"),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulder Display",
            ),
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}

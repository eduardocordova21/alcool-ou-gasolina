import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:aog/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _gasolinaController = MoneyMaskedTextController();
  final _alcoolController = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        const Logo(),
        Success(result: "Compensa Utilizar X", reset: () {}),
        Input(label: "Álcool", controller: _alcoolController),
        Input(label: "Gasolina", controller: _gasolinaController),
        LoadingButton(
            busy: true, invert: false, function: () {}, text: "CALCULAR"),
      ]),
    );
  }
}

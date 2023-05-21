import 'package:fancy_qr_generator/Qr_Generator.dart';
import 'package:fancy_qr_generator/Scanner.dart';
import 'package:fancy_qr_generator/choice_Screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MyHomePage(),
      home: Home_Landing_Screen(),
      // home: MyScanner(),
      debugShowCheckedModeBanner: false,
      title: 'Fancy Qr Generator',
    );
  }
}

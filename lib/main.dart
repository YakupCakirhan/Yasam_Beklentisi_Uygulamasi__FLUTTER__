// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue,
        primaryColor: Colors.lightBlue,
      ),
      home:  InputPage(),
    );
  }
}

// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  

  const MyContainer(
      {this.renk = Colors.white, required this.child, });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      child: Container(
        child: child,
        margin: EdgeInsets.all(12),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: renk),
      ),
    );
  }
}

// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter_application_1/constants.dart';

import 'input_page.dart';
import 'my_container.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';

class IconCinsiyet extends StatelessWidget {
  final IconData  icon;
  final String  cinsiyet;
  const IconCinsiyet({  required this.icon, required this.cinsiyet });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Icon(icon,size: 50, color: Colors.black54,),
         SizedBox(
          width: 20,
          height: 10,
        ),
      Text(cinsiyet, style:kMetinstili )],
    );
  }
}

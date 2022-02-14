// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_const_constructors_in_immutables

import 'constants.dart';
import 'main.dart';
import 'input_page.dart';
import 'package:flutter/material.dart';
import 'icon_cinsiyet.dart';
import 'user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
 final UserData _userData;
  ResultPage(this._userData);
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:const Text('Sonuç Sayfası'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Expanded(
            flex: 8,
            child: Center(child: Text(Hesap(_userData).hesaplama().round().toString(), style: kMetinstili,)),),
         // ignore: deprecated_member_use
         Expanded(
           flex: 1,
           // ignore: deprecated_member_use
           child: FlatButton(color: Colors.white, onPressed: (){ 
             Navigator.pop( context);
           }, child: Text('Geri Dön', style: kMetinstili,)))
        ],
      )
      
      
    );
  }
}
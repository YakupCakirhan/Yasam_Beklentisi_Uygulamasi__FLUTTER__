// ignore_for_file: unnecessary_const, unused_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names, deprecated_member_use, unrelated_type_equality_checks
import 'dart:ffi';

import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/result_page.dart';
import 'package:flutter_application_1/user_data.dart';

import 'icon_cinsiyet.dart';
import 'package:flutter/material.dart';
import 'my_container.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var seciliCinsiyet;
  double icilenSigara = 0.0;
  double gunSayisi = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: newMethodOutlineButton('BOY'),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: newMethodOutlineButton('KİLO'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Haftada kaç gün spor yapıyorsunuz',
                            style: kMetinstili),
                        SizedBox(
                          width: 10,
                          height: 5,
                        ),
                        Text('${gunSayisi.round()}', style: kSayiStili),
                        Slider(
                            min: 0,
                            max: 7,
                            divisions: 7,
                            value: gunSayisi,
                            onChanged: (double newValu) {
                              setState(() {
                                gunSayisi = newValu;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Günde kaç sigara içiyorsunuz',
                            style: kMetinstili),
                        SizedBox(
                          width: 20,
                          height: 5,
                        ),
                        Text('${icilenSigara.round()}', style: kSayiStili),
                        Slider(
                          min: 0,
                          max: 30,
                          value: icilenSigara,
                          onChanged: (double newValue) {
                            setState(() {
                              icilenSigara = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyet = 'Kadin';
                      });
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet == 'Kadin'
                          ? Colors.greenAccent
                          : Colors.white,
                      child: IconCinsiyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyet: 'Kadın',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyet = 'Erkek';
                      });
                    },
                    child: MyContainer(
                        renk: seciliCinsiyet == 'Erkek'
                            ? Colors.greenAccent
                            : Colors.white,
                        child: IconCinsiyet(
                          icon: FontAwesomeIcons.mars,
                          cinsiyet: 'Erkek',
                        )),
                  ),
                ),
              ],
            )),
            ButtonTheme(
              height: 50,
              minWidth: 200,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ResultPage(
                              UserData(boy:boy,kilo: kilo,seciliCinsiyet: seciliCinsiyet,icilenSigara: icilenSigara,gunSayisi:gunSayisi, )
                            )));
                  },
                  color: Colors.white,
                  child: Text(
                    'HESAPLA',
                    style: kMetinstili,
                  )),
            ),
            SizedBox(
              height: 10,
              width: 20,
            )
          ],
        ));
  }

  Row newMethodOutlineButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: 3,
            child: Text(
              label,
              style: kMetinstili,
            )),
        SizedBox(
          width: 10,
          height: 10,
        ),
        RotatedBox(
            quarterTurns: 3,
            child: Text(label == 'BOY' ? boy.toString() : kilo.toString(),
                style: kSayiStili)),
        SizedBox(
          width: 10,
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                borderSide: BorderSide(color: Colors.lightBlue, width: 0.7),
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 15,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                borderSide: BorderSide(color: Colors.lightBlue, width: 0.7),
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy-- : kilo--;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 15,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

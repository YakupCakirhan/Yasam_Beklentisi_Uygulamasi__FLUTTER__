// ignore_for_file: unused_field, prefer_final_fields, unused_import, dead_code

import 'package:flutter_application_1/user_data.dart';
import 'user_data.dart';
import 'result_page.dart';
import 'input_page.dart';
class Hesap{
   UserData _userData;
  Hesap(this._userData);
  double hesaplama(){
    double sonuc=90;
   return sonuc =90+ _userData.gunSayisi- _userData.icilenSigara;
    sonuc=sonuc+(_userData.boy/_userData.kilo);
    _userData.seciliCinsiyet=='KADIN'?sonuc+3 : sonuc ;
    
  }
}
import 'package:flutter/material.dart';

class Soru {
  String soruMetni;
  bool soruYaniti;
  String dogrusu;

  Soru(
      {@required this.soruMetni,
      @required this.soruYaniti,
      @required this.dogrusu});
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier
{
  Color scaffoldBg = Colors.white;

  void updateColor(Color newColor)
  {
    scaffoldBg = newColor;
    notifyListeners();
  }
}
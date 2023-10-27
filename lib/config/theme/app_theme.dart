import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.yellow,
  ];

class AppTheme {

  final int selecterColor;

  AppTheme({
    this.selecterColor = 0,
  }): assert(selecterColor >= 0 && selecterColor <= colorList.length -1, 'Selecter color must be greater then 0');

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selecterColor],
    appBarTheme: AppBarTheme(
      centerTitle: false),
  );
}
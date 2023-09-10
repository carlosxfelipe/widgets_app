import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.yellowAccent,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
      : assert(selectedColor >= 0,
            'A cor selecionada tem que ser maior ou igual a 0'),
        assert(selectedColor < colorList.length,
            'A cor selecionada tem que ser menor que ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.light : Brightness.dark,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}

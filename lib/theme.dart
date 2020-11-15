import 'package:flutter/material.dart';

Map<int, Color> _color = {
  50: Color.fromRGBO(171, 212, 207, .1),
  100: Color.fromRGBO(171, 212, 207, .2),
  200: Color.fromRGBO(171, 212, 207, .3),
  300: Color.fromRGBO(171, 212, 207, .4),
  400: Color.fromRGBO(171, 212, 207, .5),
  500: Color.fromRGBO(171, 212, 207, .6),
  600: Color.fromRGBO(171, 212, 207, .7),
  700: Color.fromRGBO(171, 212, 207, .8),
  800: Color.fromRGBO(171, 212, 207, .9),
  900: Color.fromRGBO(171, 212, 207, 1),
};
var accentColor = Colors.teal[900];
var theme = ThemeData(
    primarySwatch: MaterialColor(0xFFabd4cc, _color),
    accentColor: accentColor,
    fontFamily: "Qicksand",
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
      buttonColor: accentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: _color[800])),
    ),
    textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 20,
          color: Colors.grey[800],
        ),
        headline5: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.grey[500],
        ),
        button: TextStyle(
          color: Colors.white,
          fontSize: 20,
        )),
    appBarTheme: AppBarTheme(
      textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
            fontFamily: "Qicksand",
            fontSize: 25,
            color: Colors.grey[900],
          )),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonColor: accentColor,
    highlightColor: accentColor,
    iconTheme: IconThemeData(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.teal[800],
      focusColor: accentColor,
    ));

import 'package:flutter/material.dart';

//LightTheme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  textTheme: lightTextTheme,
);

TextStyle lightTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
);
TextTheme lightTextTheme = TextTheme(
  bodyText1: lightTextStyle,
);

//DarkTheme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
);

TextStyle darkTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);
TextTheme darkTextTheme = TextTheme(
  bodyText1: lightTextStyle,
);

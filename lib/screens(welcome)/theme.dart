import 'package:chat/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
//  var kPrimaryColor;
//  var kContentColorLightTheme;
//  var appBarTheme;
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
      // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
     // .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    // .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}
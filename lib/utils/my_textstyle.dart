import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/utils/my_colors.dart';

class MyTextStyle {
  static const double verySmallSize = 12;
  static const double smallSize = 14;
  static const double normalSize = 16;
  static const double largeSize = 18;
  static const double veryLargeSize = 20;

  static TextStyle spectralFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.spectral(
      fontSize: fontSize,
      color: fontColor,
      fontWeight: fontWeight,
    );
  }
}

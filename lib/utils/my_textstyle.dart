import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/utils/my_colors.dart';

class MyTextStyle {
  static const double smallSize = 12;
  static const double defaultSize = 14;
  static const double normalSize = 16;
  static const double largeSize = 18;
  static const double veryLargeSize = 16;
  static TextStyle titleTextStyle = GoogleFonts.spectral(
    color: MyColor.blackColor,
    fontSize: largeSize,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textFieldTextStyle = GoogleFonts.spectral(
    // color: MyColor.blackColor,
    fontSize: normalSize,
    fontWeight: FontWeight.w500,
  );
}

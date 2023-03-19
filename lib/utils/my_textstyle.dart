import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/utils/my_colors.dart';

class MyTextStyle {
  static const double verSmallSize = 12;
  static const double smallSize = 14;
  static const double normalSize = 16;
  static const double largeSize = 18;
  static const double veryLargeSize = 20;
  static TextStyle titleTextStyle = GoogleFonts.spectral(
    color: MyColor.blackColor,
    fontSize: veryLargeSize,
    fontWeight: FontWeight.bold,
  );
  static TextStyle titleTextStyle1 = GoogleFonts.spectral(
    color: MyColor.blackColor,
    fontSize: largeSize,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subTitleTextStyle = GoogleFonts.spectral(
    color: MyColor.blackColor,
    fontSize: normalSize,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textFieldTextStyle = GoogleFonts.spectral(
    // color: MyColor.blackColor,
    fontSize: normalSize,
    fontWeight: FontWeight.w500,
  );
   static TextStyle navigationTextStyle = GoogleFonts.spectral(
    color: MyColor.appColor,
    fontSize: normalSize,
    fontWeight: FontWeight.bold,
  );
}

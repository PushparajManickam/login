import 'package:flutter/material.dart';

import '../utils/my_colors.dart';
import '../utils/my_textstyle.dart';

class MyTheme {
  static ThemeData myThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MyColor.appColor,
    ),

    // AppBarTheme
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: MyColor.blackColor,
    ),
    //IconButtonTheme
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconSize: MaterialStateProperty.all(
          MyTextStyle.normalSize,
        ),
      ),
    ),
    //BottomNavigationBarTheme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: MyColor.greyColor,
    ),
    //BottomSheetTheme
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
    ),
    // ButtonTheme
    buttonTheme: const ButtonThemeData(
      padding: EdgeInsets.all(
        10,
      ),
    ),
    // BadgeTheme
    badgeTheme: const BadgeThemeData(
      largeSize: MyTextStyle.largeSize,
    ),
    // CardTheme
    cardTheme: const CardTheme(
      color: MyColor.whiteColor,
    ),
    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: MyColor.purpleColor1,
    ),
    //InputDecoration
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          borderSide: BorderSide.none),
      filled: true,
      fillColor: Colors.grey.withOpacity(
        0.1,
      ),
    ),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 20.0,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          MyColor.blackColor,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: MyTextStyle.normalSize,
          ),
        ),
      ),
    ),
    // TextTheme
    textTheme: TextTheme(
      titleLarge: MyTextStyle.spectralFont(
        MyTextStyle.veryLargeSize,
        MyColor.blackColor,
        FontWeight.bold,
      ),
      titleMedium: MyTextStyle.spectralFont(
        MyTextStyle.normalSize,
        MyColor.blackColor,
        FontWeight.w500,
      ),
      titleSmall: MyTextStyle.spectralFont(
        MyTextStyle.largeSize,
        MyColor.blackColor,
        FontWeight.normal,
      ),
      bodyLarge: MyTextStyle.spectralFont(
        MyTextStyle.veryLargeSize,
        MyColor.blackColor,
        FontWeight.bold,
      ),
      bodyMedium: MyTextStyle.spectralFont(
        MyTextStyle.normalSize,
        MyColor.blackColor,
        FontWeight.w500,
      ),
      bodySmall: MyTextStyle.spectralFont(
        MyTextStyle.smallSize,
        MyColor.blackColor,
        FontWeight.normal,
      ),
      labelLarge: MyTextStyle.spectralFont(
        MyTextStyle.veryLargeSize,
        MyColor.blackColor,
        FontWeight.bold,
      ),
      labelMedium: MyTextStyle.spectralFont(
        MyTextStyle.normalSize,
        MyColor.blackColor,
        FontWeight.w500,
      ),
      labelSmall: MyTextStyle.spectralFont(
        MyTextStyle.smallSize,
        MyColor.blackColor,
        FontWeight.normal,
      ),
    ),
  );
}

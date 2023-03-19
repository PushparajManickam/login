import 'package:flutter/material.dart';
import 'package:login/utils/my_colors.dart';

class MyGlobalDeclarationProperty {
  static BorderRadiusGeometry textfieldBorderRadius = const BorderRadius.all(
    Radius.circular(
      14,
    ),
  );
  static InputBorder textfieldBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: MyColor.whiteColor,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        14,
      ),
    ),
  );
}

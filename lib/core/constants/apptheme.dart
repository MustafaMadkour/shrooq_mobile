import 'package:alshrooq/core/constants/color.dart';
import 'package:flutter/material.dart';

ThemeData enTheme = ThemeData(
  fontFamily: "Roboto",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      // fontSize: 17,
    ),
  ),
  primarySwatch: AppColor.primaryMaterialColor,
);

ThemeData arTheme = ThemeData(
  fontFamily: "ArefRuqaa",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      // fontSize: 17,
    ),
  ),
  primarySwatch: AppColor.primaryMaterialColor,
);

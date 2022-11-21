import 'package:boardlez/core/ui/theme/app_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final AppThemeData themeData = AppThemeData(Brightness.light);

final ThemeData defaultTheme = ThemeData(
    primarySwatch: themeData.primaryColor,
    brightness: Brightness.light,
    primaryColor: themeData.primaryColor,
    colorScheme: ColorScheme.light(secondary: themeData.secondaryColor),
    scaffoldBackgroundColor: Colors.white,
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: themeData.primaryColor.shade500,
    ),
    appBarTheme: AppBarTheme(backgroundColor: themeData.primaryColor),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: themeData.primaryColor[800], fontWeight: FontWeight.w600, letterSpacing: -0.5),
        bodyText2: const TextStyle(fontWeight: FontWeight.w600, letterSpacing: -0.5),
        subtitle2: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)
    //    bodyMedium: TextStyle(color: themeData.primaryColor, fontWeight: FontWeight.w600, letterSpacing: -0.5)
    ),
    dividerColor: themeData.borderColor,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      minWidth: 88,
      height: 40,
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      buttonColor: themeData.primaryColor,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(Radius.circular(themeData.borderRadius))),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: themeData.primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(themeData.borderRadius))),
        textStyle: const TextStyle(letterSpacing: -0.5, fontWeight: FontWeight.w600, fontSize: 16),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: themeData.primaryColor,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(Radius.circular(themeData.borderRadius))),
    )),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: null,
      isDense: false,
      contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 0),
      isCollapsed: false,
      filled: true,
      fillColor: themeData.inputFill,
      hintStyle: TextStyle(color: themeData.hintColor, letterSpacing: -0.5, fontWeight: FontWeight.w600),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(themeData.borderRadius),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: themeData.borderColor,
      space: 20,
    ));

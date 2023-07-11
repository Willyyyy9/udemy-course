import 'package:advanced/presentation/color_manager.dart';
import 'package:advanced/presentation/font_manager.dart';
import 'package:advanced/presentation/styles_manager.dart';
import 'package:advanced/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    //Cards Teme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //AppBar Theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        )),

    //Button Theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),
  );
}

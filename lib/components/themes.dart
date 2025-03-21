import 'package:flutter/material.dart';
import 'package:watch_store/components/input_decoration_theme.dart';
import 'package:watch_store/resource/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: LightAppColors.iconColor),
    primaryColor: LightAppColors.primaryColor,
    scaffoldBackgroundColor: LightAppColors.scaffoldBackgroundColor,
    inputDecorationTheme: inputDecorationTheme,
  );
}

import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resource/colors.dart';

class LightAppTextStyles {
  LightAppTextStyles._();

  static const TextStyle title = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: LightAppColors.title);
  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 13, color: LightAppColors.hint);
  static const TextStyle buttonTitle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      color: LightAppColors.mainButtonText);
}

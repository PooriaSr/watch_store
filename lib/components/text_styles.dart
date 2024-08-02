import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resource/colors.dart';

class LightAppTextStyles {
  LightAppTextStyles._();

  static const TextStyle title = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightAppColors.title);
  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: LightAppColors.title);
  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 13, color: LightAppColors.hint);
  static const TextStyle mainButtonTitle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: LightAppColors.mainButtonText);
  static const TextStyle appBarTitle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: LightAppColors.title);
  static const TextStyle wrongNumberChangeNumberText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 0, 117, 251));
  static const TextStyle btmNavActiveItem = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightAppColors.btmNavActiveItem);
  static const TextStyle btmNavInActiveItem = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightAppColors.btmNavInActiveItem);
}

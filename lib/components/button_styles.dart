import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class AppButtonStyles {
  AppButtonStyles._();
  static ButtonStyle mainButtonStyle = ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.small))),
      foregroundColor: const WidgetStatePropertyAll(AppColors.mainButtonText),
      backgroundColor: const WidgetStatePropertyAll(AppColors.mainButton));
}

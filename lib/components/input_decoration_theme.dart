import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.focused)) {
          return LightAppColors.focusedTextField;
        } else {
          return LightAppColors.focusedTextField;
        }
      },
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.small),
        borderSide: const BorderSide(color: LightAppColors.borderColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.small),
      borderSide: const BorderSide(color: LightAppColors.focusedBorderColor),
    ),
    hintStyle: const TextStyle(fontSize: 12),
    contentPadding: const EdgeInsets.all(AppDimens.small));

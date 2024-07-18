import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.focusedTextField;
        } else {
          return AppColors.focusedTextField;
        }
      },
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.small),
        borderSide: const BorderSide(color: AppColors.borderColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.small),
      borderSide: const BorderSide(color: AppColors.focusedBorderColor),
    ),
    hintStyle: const TextStyle(fontSize: 12),
    contentPadding: const EdgeInsets.all(AppDimens.small));

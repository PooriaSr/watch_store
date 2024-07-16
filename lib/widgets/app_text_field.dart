import 'package:flutter/material.dart';

import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final Color iconColor;
  final TextInputType textInputType;
  final TextDirection textDirection;

  const AppTextField(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller,
      this.textInputType = TextInputType.text,
      this.textDirection = TextDirection.rtl,
      this.icon = const SizedBox.shrink(),
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: AppDimens.small, bottom: AppDimens.small),
          child: Text(title),
        ),
        SizedBox(
          width: phoneSize.width / 1.6,
          height: phoneSize.height / 20,
          child: TextField(
            keyboardType: textInputType,
            textDirection: textDirection,
            controller: controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.focusedTextField,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimens.small),
                    borderSide: const BorderSide(color: AppColors.borderColor)),
                focusColor: AppColors.focusedBorderColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimens.small)),
                hintText: hint,
                hintStyle: const TextStyle(fontSize: 12),
                hintTextDirection: TextDirection.rtl,
                prefixIcon: icon,
                prefixIconColor: iconColor),
          ),
        ),
      ],
    );
  }
}

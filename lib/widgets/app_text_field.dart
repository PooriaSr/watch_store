import 'package:flutter/material.dart';
import 'package:watch_store/resource/dimens.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hint;
  final String countDown;
  final TextEditingController controller;
  final Widget? icon;
  final Color iconColor;
  final TextInputType textInputType;
  final TextDirection textDirection;
  final TextAlign textAlign;

  const AppTextField(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller,
      this.countDown = '',
      this.textInputType = TextInputType.text,
      this.textDirection = TextDirection.rtl,
      this.textAlign = TextAlign.start,
      this.icon,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimens.xSmall),
          child: SizedBox(
            width: phoneSize.width / 1.63,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(countDown),
                Text(title),
              ],
            ),
          ),
        ),
        icon == null
            ? SizedBox(
                width: phoneSize.width / 1.6,
                height: phoneSize.height / 20,
                child: TextField(
                  keyboardType: textInputType,
                  textDirection: textDirection,
                  textAlign: textAlign,
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintTextDirection: textDirection,
                      prefixIconColor: iconColor),
                ),
              )
            : SizedBox(
                width: phoneSize.width / 1.6,
                height: phoneSize.height / 20,
                child: TextField(
                  keyboardType: textInputType,
                  textDirection: textDirection,
                  textAlign: textAlign,
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintTextDirection: textDirection,
                      prefixIcon: icon,
                      prefixIconColor: iconColor),
                ),
              ),
      ],
    );
  }
}

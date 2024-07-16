import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class AppButton extends StatelessWidget {
  final Function() function;
  final String title;
  const AppButton({super.key, required this.function, required this.title});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return SizedBox(
      width: phoneSize.width / 1.6,
      height: phoneSize.height / 20,
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDimens.small))),
            foregroundColor:
                const WidgetStatePropertyAll(AppColors.mainButtonText),
            backgroundColor:
                const WidgetStatePropertyAll(AppColors.mainButton)),
        child: Text(title),
      ),
    );
  }
}

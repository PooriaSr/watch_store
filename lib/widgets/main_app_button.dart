import 'package:flutter/material.dart';
import 'package:watch_store/components/button_styles.dart';
import 'package:watch_store/components/text_styles.dart';

class MainAppButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const MainAppButton(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return SizedBox(
      width: phoneSize.width / 1.4,
      height: phoneSize.height / 20,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppButtonStyles.mainButtonStyle,
        child: Text(
          title,
          style: LightAppTextStyles.mainButtonTitle,
        ),
      ),
    );
  }
}

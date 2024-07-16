import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: phoneSize.width / 1.42,
        height: phoneSize.height / 7.08,
        child: Image.asset(
          Assets.png.mainLogo.path,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

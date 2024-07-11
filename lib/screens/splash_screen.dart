import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.png.mainLogo.path),
          AppDimens.large.sizedBoxHeight,
          const SpinKitThreeBounce(
            color: AppColors.loadingSpinKit,
            size: AppDimens.large,
          )
        ],
      ),
    );
  }
}

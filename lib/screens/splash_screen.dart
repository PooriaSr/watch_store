import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/widgets/app_loading.dart';
import 'package:watch_store/widgets/app_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppLogo(),
          AppDimens.large.sizedBoxHeight,
          const AppLoading()
        ],
      ),
    );
  }
}

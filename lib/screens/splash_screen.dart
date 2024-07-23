import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/route/screen_names.dart';
import 'package:watch_store/widgets/app_loading.dart';
import 'package:watch_store/widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then(
      (value) =>
          Navigator.pushReplacementNamed(context, ScreenNames.getOtpScreen),
    );
  }

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

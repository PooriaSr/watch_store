import 'package:flutter/material.dart';
import 'package:watch_store/route/screen_names.dart';
import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/register_screen/get_otp_screen.dart';
import 'package:watch_store/screens/register_screen/user_register_screen.dart';
import 'package:watch_store/screens/register_screen/verify_otp_screen.dart';
import 'package:watch_store/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => const SplashScreen(),
  ScreenNames.getOtpScreen: (context) => const GetOtpScreen(),
  ScreenNames.verifyOtpScreen: (context) => const VerifyOtpScreen(),
  ScreenNames.userRegisterScreen: (context) => const UserRegisterScreen(),
  ScreenNames.mainScreen: (context) => const MainScreen()
};

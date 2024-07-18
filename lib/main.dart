import 'package:flutter/material.dart';
import 'package:watch_store/components/themes.dart';
import 'package:watch_store/screens/register/user_register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      title: 'Watch App',
      home: const UserRegisterScreen(),
    );
  }
}

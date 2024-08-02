import 'package:flutter/material.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/main_app_bar.dart';
import 'package:watch_store/widgets/main_btn_nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MainAppBar(title: AppStrings.userProfile, size: phoneSize / 18),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: phoneSize.height / 10,
              child: Container(
                height: phoneSize.height / 10,
                color: Colors.yellow,
              )),
          const Positioned(bottom: 0, left: 0, right: 0, child: MainBtnNav())
        ],
      ),
    );
  }
}

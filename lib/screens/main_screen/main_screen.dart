import 'package:flutter/material.dart';
import 'package:watch_store/screens/main_screen/basket_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/widgets/main_btn_nav.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static int selectedIndex = BtmNavScreenIndex.home;
  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;

    return PopScope(
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: phoneSize.height / 10,
                  child: IndexedStack(
                    index: selectedIndex,
                    children: [
                      Navigator(
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            settings: settings,
                            builder: (context) => const HomeScreen()),
                      ),
                      Navigator(
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            settings: settings,
                            builder: (context) => const BasketScreen()),
                      ),
                      Navigator(
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            settings: settings,
                            builder: (context) => const ProfileScreen()),
                      )
                    ],
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: MainBtnNav(
                    selectedIndex: btmNavOnPressed,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  btmNavOnPressed({required int index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}

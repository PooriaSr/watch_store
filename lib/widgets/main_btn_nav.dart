import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_icon_btn.dart';

class MainBtnNav extends StatelessWidget {
  final Function({required int index}) selectedIndex;
  static List isActive = [false, false, true];

  const MainBtnNav({required this.selectedIndex, super.key});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Container(
      height: phoneSize.height / 9,
      color: LightAppColors.btmNavColor,
      child: Padding(
        padding: const EdgeInsets.only(
            right: AppDimens.xLarge,
            left: AppDimens.xLarge,
            top: AppDimens.xSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIconBtn(
                onTap: () {
                  selectedIndex(index: 2);
                  isActive = [true, false, false];
                },
                iconPath: Assets.svg.user,
                title: AppStrings.profile,
                isActive: isActive[0]),
            AppIconBtn(
                onTap: () {
                  selectedIndex(index: 1);
                  isActive = [false, true, false];
                },
                iconPath: Assets.svg.cart,
                title: AppStrings.basket,
                isActive: isActive[1]),
            AppIconBtn(
                onTap: () {
                  selectedIndex(index: 0);
                  isActive = [false, false, true];
                },
                iconPath: Assets.svg.home,
                title: AppStrings.home,
                isActive: isActive[2]),
          ],
        ),
      ),
    );
  }
}

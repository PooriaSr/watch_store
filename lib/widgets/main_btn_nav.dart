import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_icon_btn.dart';

class MainBtnNav extends StatelessWidget {
  const MainBtnNav({
    super.key,
  });

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
                onTap: () {},
                iconPath: Assets.svg.user,
                title: AppStrings.profile,
                isActive: false),
            AppIconBtn(
                onTap: () {},
                iconPath: Assets.svg.cart,
                title: AppStrings.basket,
                isActive: false),
            AppIconBtn(
                onTap: () {},
                iconPath: Assets.svg.home,
                title: AppStrings.home,
                isActive: true),
          ],
        ),
      ),
    );
  }
}

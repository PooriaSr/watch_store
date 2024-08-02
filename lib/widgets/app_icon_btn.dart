import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class AppIconBtn extends StatelessWidget {
  final void Function() onTap;
  final String iconPath;
  final String title;
  final bool isActive;
  const AppIconBtn({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        highlightColor: Colors.transparent,
        onPressed: onTap,
        icon: Column(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                  isActive
                      ? LightAppColors.btmNavActiveItem
                      : LightAppColors.btmNavInActiveItem,
                  BlendMode.srcIn),
            ),
            AppDimens.xSmall.sizedBoxHeight,
            Text(
              title,
              style: isActive
                  ? LightAppTextStyles.btmNavActiveItem
                  : LightAppTextStyles.btmNavInActiveItem,
            )
          ],
        ));
  }
}

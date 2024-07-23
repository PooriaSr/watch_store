import 'package:flutter/material.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  final Widget icon;
  const MainAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: LightAppColors.appbar,
      shadowColor: LightAppColors.appbarShadow,
      elevation: 1,
      titleSpacing: AppDimens.large,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(bottom: AppDimens.xSmall),
            child: Text(
              title,
              style: LightAppTextStyles.appBarTitle,
            ),
          ),
        ],
      ),
    );
  }
}

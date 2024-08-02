import 'package:flutter/material.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class MainAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  final Widget icon;
  final Size size;
  const MainAppBar(
      {super.key,
      required this.title,
      this.icon = const SizedBox(),
      required this.size});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: LightAppColors.appbar,
      shadowColor: LightAppColors.appbarShadow,
      elevation: 1,
      titleSpacing: AppDimens.large,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () => Navigator.pop(context), icon: icon),
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

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => size;
}

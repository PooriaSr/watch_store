import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: phoneSize.width / 5.9,
          height: phoneSize.width / 5.9,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: Assets.png.avatar.provider(), fit: BoxFit.cover)),
        ),
        AppDimens.medium.sizedBoxHeight,
        const Text(AppStrings.chooseProfileImage)
      ],
    );
  }
}

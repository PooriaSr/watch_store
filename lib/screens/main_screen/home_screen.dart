import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/screens/register_screen/get_otp_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          top: AppDimens.large,
          left: AppDimens.xLarge,
          right: AppDimens.xLarge),
      child: Column(
        children: [
          Container(
            width: phoneSize.width,
            height: phoneSize.height / 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: LightAppColors.appbar,
                boxShadow: const [
                  BoxShadow(
                      blurStyle: BlurStyle.inner,
                      color: LightAppColors.appbarShadow,
                      offset: Offset(0, 2))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(Assets.svg.search),
                const Text(
                  AppStrings.searchProduct,
                  style: LightAppTextStyles.hint,
                ),
                Image(
                  image: Assets.png.mainLogo.provider(),
                  height: AppDimens.xxLarge,
                )
              ],
            ),
          ),
          AppDimens.xxxLarge.sizedBoxHeight,
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GetOtpScreen()));
              },
              child: const Text('click'))
        ],
      ),
    );
  }
}

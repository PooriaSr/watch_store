import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';

import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/route/screen_names.dart';
import 'package:watch_store/widgets/main_app_button.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(),
            AppDimens.xxxLarge.sizedBoxHeight,
            AppTextField(
              controller: textEditingController,
              title: AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
            ),
            AppDimens.xLarge.sizedBoxHeight,
            MainAppButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenNames.verifyOtpScreen);
                },
                title: AppStrings.sendOtpCode)
          ],
        ),
      ),
    );
  }
}

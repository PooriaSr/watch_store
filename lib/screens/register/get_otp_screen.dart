import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';

import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_button.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    Size phoneSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(),
            (phoneSize.height / 6.6).sizedBoxHeight,
            AppTextField(
              controller: textEditingController,
              title: AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
            ),
            AppDimens.xLarge.sizedBoxHeight,
            MainAppButton(onPressed: () {}, title: AppStrings.sendOtpCode)
          ],
        ),
      ),
    );
  }
}

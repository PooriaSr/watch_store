import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(),
            AppDimens.xxLarge.sizedBoxHeight,
            Text(
                AppStrings.otpCodeSendFor
                    .replaceAll(AppStrings.replace, '09123909012'),
                style: LightAppTextStyles.title),
            AppDimens.medium.sizedBoxHeight,
            const Text(
              AppStrings.wrongNumberEditNumber,
              style: LightAppTextStyles.wrongNumberChangeNumberText,
            ),
            AppDimens.xxLarge.sizedBoxHeight,
            AppTextField(
              title: AppStrings.enterVerificationCode,
              hint: AppStrings.hintVerificationCode,
              countDown: '1:43',
              controller: textEditingController,
              textInputType: TextInputType.number,
              textAlign: TextAlign.center,
            )
          ],
        )),
      ),
    );
  }
}

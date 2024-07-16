import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resource/colors.dart';
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
        backgroundColor: AppColors.mainBg,
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
            AppButton(function: () {}, title: AppStrings.sendOtpCode)
          ],
        ),
      ),
    );
  }
}

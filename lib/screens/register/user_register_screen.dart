import 'package:flutter/material.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_avatar.dart';
import 'package:watch_store/widgets/main_app_button.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserRegisterScreen extends StatelessWidget {
  const UserRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    Size phoneSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(phoneSize.height / 20),
            child: MainAppBar(
                title: AppStrings.register,
                icon: SvgPicture.asset(Assets.svg.back))),
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: SizedBox(
              width: phoneSize.width,
              child: Column(
                children: [
                  AppDimens.xLarge.sizedBoxHeight,
                  const AppAvatar(),
                  AppDimens.xLarge.sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.nameLastName,
                      hint: AppStrings.hintNameLastName,
                      controller: textEditingController),
                  AppDimens.medium.sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.homeNumber,
                      hint: AppStrings.hintHomeNumber,
                      controller: textEditingController),
                  AppDimens.medium.sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.address,
                      hint: AppStrings.hintAddress,
                      controller: textEditingController),
                  AppDimens.medium.sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.postalCode,
                      hint: AppStrings.hintPostalCode,
                      controller: textEditingController),
                  AppDimens.medium.sizedBoxHeight,
                  AppTextField(
                    title: AppStrings.location,
                    hint: AppStrings.hintLocation,
                    controller: textEditingController,
                    icon: const Icon(Icons.location_on_outlined),
                  ),
                  AppDimens.xxxLarge.sizedBoxHeight,
                  MainAppButton(onPressed: () {}, title: AppStrings.register),
                  (MediaQuery.of(context).viewInsets.bottom / 1.4)
                      .sizedBoxHeight,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

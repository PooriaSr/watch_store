import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_avatar.dart';
import 'package:watch_store/widgets/app_button.dart';
import 'package:watch_store/widgets/app_text_field.dart';

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
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: SizedBox(
              width: phoneSize.width,
              child: Column(
                children: [
                  (phoneSize.height / 20).sizedBoxHeight,
                  const AppAvatar(),
                  (phoneSize.height / 20).sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.nameLastName,
                      hint: AppStrings.hintNameLastName,
                      controller: textEditingController),
                  (phoneSize.height / 45).sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.homeNumber,
                      hint: AppStrings.hintHomeNumber,
                      controller: textEditingController),
                  (phoneSize.height / 45).sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.address,
                      hint: AppStrings.hintAddress,
                      controller: textEditingController),
                  (phoneSize.height / 45).sizedBoxHeight,
                  AppTextField(
                      title: AppStrings.postalCode,
                      hint: AppStrings.hintPostalCode,
                      controller: textEditingController),
                  (phoneSize.height / 45).sizedBoxHeight,
                  AppTextField(
                    title: AppStrings.location,
                    hint: AppStrings.hintLocation,
                    controller: textEditingController,
                    icon: const Icon(Icons.location_on_outlined),
                  ),
                  (phoneSize.height / 20).sizedBoxHeight,
                  MainAppButton(onPressed: () {}, title: AppStrings.register),
                  (MediaQuery.of(context).viewInsets.bottom / 1.2)
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

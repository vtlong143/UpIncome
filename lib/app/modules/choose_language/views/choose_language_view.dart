import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/themes/colors.dart';
import 'package:up_income/app/utils/constant.dart';

import '../controllers/choose_language_controller.dart';

class ChooseLanguageView extends GetView<ChooseLanguageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Spacer(),
              Image.network(
                  'https://i.pinimg.com/564x/3c/70/7d/3c707df82142f314d40afa2a4868ef48.jpg'),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: colorBlue),
                ),
                child: GestureDetector(
                  onTap: () {
                    var locale = const Locale('en', 'US');
                    GetStorage().write(StorageBox.Language, 'en_US');
                    Get.updateLocale(locale);
                    Get.offAndToNamed(Routes.ONBOARDING);
                  },
                  child: const Text(
                    'English',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: colorBlue),
                ),
                child: GestureDetector(
                  onTap: () {
                    var locale = const Locale('vi', 'VN');
                    GetStorage().write(StorageBox.Language, 'vi_VN');
                    Get.updateLocale(locale);
                    Get.offAndToNamed(Routes.ONBOARDING);
                  },
                  child: const Text(
                    'Tiếng Việt',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

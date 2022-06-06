import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:up_income/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController
  final pageController = PageController().obs;
  final pageIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    pageController.value = PageController(initialPage: 0);
  }

  @override
  void onReady() {
    super.onReady();
  }

  void nextPage() {
    pageController.value
        .nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
    if (pageIndex.value == 2) {
      Get.toNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {}
}

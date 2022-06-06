import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';

class ForgotPasswordController extends GetxController {
  //TODO: Implement ForgotPasswordController
  final newPasswordController = TextEditingController().obs;
  final reenterPasswordController = TextEditingController().obs;
  final wrongPassword = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> resetPassword() async {
    if (newPasswordController.value.text !=
        reenterPasswordController.value.text) {
      wrongPassword.value = true;
      return;
    }
    final response = await UserProvider.instance.resetPassword(
        Get.arguments['otp'],
        Get.arguments['phoneNumber'],
        newPasswordController.value.text.trim());
    if (response.error.isEmpty) {
      Get.offAndToNamed(Routes.LOGIN);
    } else {
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';

class PhoneNumberController extends GetxController {
  //TODO: Implement PhoneNumberController
  final phoneController = TextEditingController().obs;
  final dialCode = ''.obs;
  final cantSendOTP = false.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> sendOTP(
    String phoneNumber,
  ) async {
    final response = await UserProvider.instance.sendOTP(phoneNumber);
    if (response.error.isEmpty) {
      Get.offAllNamed(Routes.CHECK_OTP, arguments: {
        "phoneNumber": '${dialCode.value}${phoneController.value.text.trim()}',
        "isSignUp": Get.arguments == null || Get.arguments["isSignUp"] == null
            ? false
            : Get.arguments["isSignUp"]
      });
    } else {
      cantSendOTP.value = true;
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

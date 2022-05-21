import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final nameController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void signUp() {
    var name = nameController.value.text.trim();
    var phone = phoneController.value.text.trim();
    var password = passwordController.value.text.trim();
    signupByPassword(name, phone, password);
  }

  Future<void> signupByPassword(
      String name, String phoneNumber, String password) async {
    final response = await UserProvider.instance
        .signupByPassword(name, phoneNumber, password);
    if (response.error.isEmpty) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

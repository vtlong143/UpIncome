import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/services/user_service.dart';
import 'package:up_income/app/utils/locale.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
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

  void login() {
    var phone = phoneController.value.text.trim();
    var password = passwordController.value.text.trim();
    loginByPassword(phone, password);
  }

  Future<void> loginByPassword(String phoneNumber, String password) async {
    final response =
        await UserProvider.instance.loginByPassword(phoneNumber, password);
    if (response.error.isEmpty) {
      // print(response.data['data']['accessToken']);
      // if (response.data['data']['isActive']) {
      Get.offAllNamed(Routes.ONBOARDING);
      // Get.find<UserService>()
      //     .setCurrentToken(response.data['data']['accessToken']);
      // } else {}
    } else {
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

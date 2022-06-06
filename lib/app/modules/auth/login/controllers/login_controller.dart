import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/services/user_service.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final phoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final cantLogin = false.obs;
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
      // print(response.data['access_token']);
      var token = jsonDecode(response.data)['access_token'];
      var refreshToken = jsonDecode(response.data)['refresh_token'];
      // if (response.data['data']['isActive']) {
      Get.offAllNamed(Routes.MAIN);
      Get.find<UserService>().setCurrentToken(token);
      Get.find<UserService>().setRefreshToken(refreshToken);
      // } else {}
    } else {
      cantLogin.value = true;
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.general_logIn.tr),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: LocaleKeys.general_logIn.tr,
              ),
            ),
            Text(LocaleKeys.general_passWord.tr),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: LocaleKeys.general_passWord.tr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

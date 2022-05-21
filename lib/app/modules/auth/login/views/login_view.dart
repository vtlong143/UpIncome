import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Text(
                  LocaleKeys.general_logIn.tr,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(LocaleKeys.general_phoneNumber.tr),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.phoneController.value,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  hintText: LocaleKeys.general_phoneNumber.tr,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(LocaleKeys.general_passWord.tr),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.passwordController.value,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.general_passWord.tr,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.PHONE_NUMBER);
                },
                child: Text(
                  LocaleKeys.general_forgotPassword.tr,
                  style: const TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text(
                    LocaleKeys.general_logIn.tr,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.general_noAccount.tr,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.PHONE_NUMBER,
                          arguments: {"isSignUp": true});
                    },
                    child: Text(
                      LocaleKeys.general_signUp.tr,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

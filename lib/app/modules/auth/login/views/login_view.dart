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
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Center(
                child: Text(
                  LocaleKeys.general_logIn.tr,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(LocaleKeys.general_phoneNumber.tr),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.phoneController.value,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  hintText: LocaleKeys.general_phoneNumber.tr,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(LocaleKeys.general_passWord.tr),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.passwordController.value,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.general_passWord.tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              Obx(
                () => controller.cantLogin.value
                    ? Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          LocaleKeys.general_cantlogIn.tr,
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      )
                    : Container(),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.PHONE_NUMBER);
                },
                child: Text(
                  LocaleKeys.general_forgotPassword.tr,
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
              SizedBox(
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
              Spacer(),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
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

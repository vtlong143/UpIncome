import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
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
                  LocaleKeys.general_passWord.tr,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(LocaleKeys.general_newPassword.tr),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.newPasswordController.value,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  hintText: LocaleKeys.general_newPassword.tr,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(LocaleKeys.general_reenternewPassword.tr),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.reenterPasswordController.value,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.general_reenternewPassword.tr,
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
              SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.resetPassword();
                  },
                  child: Text(
                    LocaleKeys.general_confirm.tr,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

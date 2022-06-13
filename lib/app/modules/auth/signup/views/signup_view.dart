import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/themes/colors.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
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
                  LocaleKeys.general_signUp.tr,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(LocaleKeys.general_name.tr),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.nameController.value,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: colorBlue),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: colorBlue),
                  ),
                  hintText: LocaleKeys.general_name.tr,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(LocaleKeys.general_phoneNumber.tr),
              const SizedBox(
                height: 8,
              ),
              TextField(
                readOnly: true,
                controller: controller.phoneController.value,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: colorBlue),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: colorBlue),
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
                    borderSide: BorderSide(color: colorBlue),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: colorBlue),
                  ),
                ),
              ),
              Obx(
                () => controller.cantSignup.value
                    ? Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          LocaleKeys.general_cantSignup.tr,
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      )
                    : Container(),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.signUp();
                  },
                  child: Text(
                    LocaleKeys.general_signUp.tr,
                  ),
                ),
              ),
              const Spacer(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       LocaleKeys.general_haveAccount.tr,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Get.toNamed(Routes.LOGIN);
              //       },
              //       child: Text(
              //         LocaleKeys.general_logIn.tr,
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/phone_number_controller.dart';

class PhoneNumberView extends GetView<PhoneNumberController> {
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
                  LocaleKeys.general_enterPhoneNumber.tr,
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
              Center(
                child: ElevatedButton(
                  onPressed: () {},
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
                    LocaleKeys.general_haveAccount.tr,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(
                      LocaleKeys.general_logIn.tr,
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
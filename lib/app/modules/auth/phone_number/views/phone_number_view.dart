import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
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
              InternationalPhoneNumberInput(
                hintText: LocaleKeys.general_phoneNumber.tr,
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                  controller.dialCode.value = number.dialCode!;
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                  setSelectorButtonAsPrefixIcon: true,
                ),
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: PhoneNumber(isoCode: 'VN'),
                textFieldController: controller.phoneController.value,
                formatInput: false,
                inputBorder: OutlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
              Obx(
                () => controller.cantSendOTP.value
                    ? Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          LocaleKeys.general_wrongPhoneNumber.tr,
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      )
                    : Container(),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.sendOTP(
                        '${controller.dialCode.value}${controller.phoneController.value.text.trim()}');
                  },
                  child: Text(
                    LocaleKeys.general_sendOTP.tr,
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

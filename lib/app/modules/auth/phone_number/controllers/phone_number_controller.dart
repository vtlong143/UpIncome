import 'package:country_codes/country_codes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PhoneNumberController extends GetxController {
  //TODO: Implement PhoneNumberController
  final phoneController = TextEditingController().obs;
  @override
  void onInit() async {
    super.onInit();
    await CountryCodes.init();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

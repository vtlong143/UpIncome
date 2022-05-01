import 'package:get/get.dart';

import '../controllers/check_otp_controller.dart';

class CheckOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckOtpController>(
      () => CheckOtpController(),
    );
  }
}

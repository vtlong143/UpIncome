import 'package:get/get.dart';
import 'package:up_income/app/data/api/user_provider.dart';
import 'package:up_income/app/routes/app_pages.dart';

class CheckOtpController extends GetxController {
  //TODO: Implement CheckOtpController
  final otp = List<String>.filled(6, '').obs;
  final phoneNumber = ''.obs;
  final isSignUp = false.obs;
  @override
  void onInit() {
    super.onInit();
    phoneNumber.value = Get.arguments['phoneNumber'];
    isSignUp.value = Get.arguments['isSignUp'] ?? false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> confirmOTP(int otp) async {
    if (!isSignUp.value) {
      Get.offAllNamed(Routes.FORGOT_PASSWORD,
          arguments: {"phoneNumber": phoneNumber.value, "otp": otp});
      return;
    }
    final response =
        await UserProvider.instance.confirmOTP(otp, phoneNumber.value);
    if (response.error.isEmpty) {
      Get.offAllNamed(Routes.SIGNUP);
    } else {
      print(response.error);
    }
  }

  Future<void> resendOTP(
    String phoneNumber,
  ) async {
    final response = await UserProvider.instance.sendOTP(phoneNumber);
    if (response.error.isEmpty) {
    } else {
      print(response.error);
    }
  }

  @override
  void onClose() {}
}

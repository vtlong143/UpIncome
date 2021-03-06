import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/routes/app_pages.dart';
import 'package:up_income/app/services/user_service.dart';
import 'package:up_income/app/utils/constant.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _showApp();
  }

  @override
  void onClose() {}

  void _showApp() async {
    final value = GetStorage().read<String>(StorageBox.ShowOnboarding);
    if (value == 'shown') {
      final token = GetStorage().read<String>(StorageBox.CurrentToken);
      if (token != null && token.isNotEmpty) {
        await Get.find<UserService>().setCurrentToken(token);
        if (!Get.find<UserService>().isAuthentication()) {
          Get.offAndToNamed(Routes.LOGIN);
          return;
        } else {
          Get.offAndToNamed(Routes.MAIN);
        }
      } else {
        Get.offAndToNamed(Routes.MAIN);
        // Get.offAndToNamed(Routes.LOGIN);
      }
    } else {
      Get.offAndToNamed(Routes.CHOOSE_LANGUAGE);
      GetStorage().write(StorageBox.ShowOnboarding, 'shown');
    }
  }
}

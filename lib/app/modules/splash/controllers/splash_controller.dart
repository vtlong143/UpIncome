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
    print('aaa');
    _showApp();
  }

  @override
  void onClose() {}

  void _showApp() async {
    print('aaa');
    final value = GetStorage().read<String>(StorageBox.ShowOnboarding);
    if (value == 'shown') {
      print('a');
      final token = GetStorage().read<String>(StorageBox.CurrentToken);
      if (token != null && token.length > 0) {
        print('b');
        await Get.find<UserService>().setCurrentToken(token);
        if (!Get.find<UserService>().isAuthentication()) {
          Get.offAndToNamed(Routes.LOGIN);
          return;
        } else {
          print('c');
          // Get.offAndToNamed(Routes.MAIN);
        }
      } else {
        print('d');
        Get.offAndToNamed(Routes.LOGIN);
      }
    } else {
      print('e');
      Get.offAndToNamed(Routes.LOGIN);
      // Get.offAndToNamed(Routes.ONBOARDING);
      GetStorage().write(StorageBox.ShowOnboarding, 'shown');
    }
  }
}

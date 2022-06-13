import 'package:get/get.dart';

class MainController extends GetxController {
  //TODO: Implement MainController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void changeTabIndex(int index) async {
    count.value = index;
  }

  @override
  void onClose() {}
}

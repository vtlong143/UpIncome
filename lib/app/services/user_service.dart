import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/utils/constant.dart';
import 'global.dart' as global;

class UserService extends GetxService {
  Future<void> setCurrentToken(String token) async {
    global.accessToken = token;
    await GetStorage().write(StorageBox.CurrentToken, token);
  }

  Future<void> setRefreshToken(String token) async {
    global.refreshToken = token;
    await GetStorage().write(StorageBox.RefreshToken, token);
  }

  bool isAuthentication() {
    return global.accessToken.isNotEmpty;
  }
}

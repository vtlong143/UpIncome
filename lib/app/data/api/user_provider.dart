import 'package:up_income/app/data/api/api_result.dart';
import 'package:up_income/app/data/api/base_api.dart';

class UserProvider extends BaseProvider {
  static final UserProvider instance = UserProvider._internal();

  factory UserProvider() => instance;

  UserProvider._internal() {
    initProvider();
  }

  Future<ApiResult> loginByPassword(
          String phoneNumber, String password) async =>
      POST('login', {"phoneNumber": phoneNumber, "password": password});
  Future<ApiResult> signupByPassword(
          String name, String phoneNumber, String password) async =>
      POST('user/save', {
        "id": 301,
        "name": name,
        "phoneNumber": phoneNumber,
        "password": password
      });
}

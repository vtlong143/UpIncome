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
      POST('user/save',
          {"name": name, "phoneNumber": phoneNumber, "password": password});

  Future<ApiResult> sendOTP(String phoneNumber) async => POST('sms/sendOtp', {
        "phoneNumber": phoneNumber,
      });

  Future<ApiResult> confirmOTP(int otp, String phoneNumber) async =>
      POST('sms/verifyOtp', {
        "otp": otp,
        "phoneNumber": phoneNumber,
      });

  Future<ApiResult> resetPassword(
          int otp, String phoneNumber, String password) async =>
      POST('user/resetPw', {
        "otp": otp,
        "password": password,
        "phoneNumber": phoneNumber,
      });
}

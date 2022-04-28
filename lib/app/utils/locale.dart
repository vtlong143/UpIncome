import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/utils/constant.dart';

class AppTranslation {
  static Locale? locale =
      languageCode[GetStorage().read<String>(StorageBox.Language)];

  static Map<String, Locale> languageCode = {
    'en_US': Locale('en', 'US'),
    'vi_VN': Locale('vi', 'VN'),
  };

  static Map<String, Map<String, String>> translations = {
    'en_US': Locales.en_US,
    'vi_VN': Locales.vi_VN,
  };
}

class LocaleKeys {
  LocaleKeys._();
  static const general_logIn = 'general_logIn';
  static const general_phoneNumber = 'general_phoneNumber';
  static const general_passWord = 'general_passWord';
  static const general_noAccount = 'general_noAccount';
  static const general_signUp = 'general_signUp';
  static const general_name = 'general_name';
  static const general_haveAccount = 'general_haveAccount';
  static const general_forgotPassword = 'general_forgotPassword';
  static const general_enterPhoneNumber = 'general_enterPhoneNumber';
  static const monday = 'Monday';
  static const tuesday = 'Tuesday';
  static const wednesday = 'Wednesday';
  static const thursday = 'Thursday';
  static const friday = 'Friday';
  static const saturday = 'Saturday';
  static const sunday = 'Sunday';
}

class Locales {
  static const en_US = {
    'general_logIn': 'Log In',
    'general_phoneNumber': 'Phone Number',
    'general_passWord': 'Password',
    'general_noAccount': 'Don\'t have an account?',
    'general_signUp': 'Sign Up',
    'general_name': 'Name',
    'general_haveAccount': 'Already have an account?',
    'general_forgotPassword': 'Forgot password',
    'general_enterPhoneNumber': 'Enter your phone number'
  };
  static const vi_VN = {
    'general_logIn': 'Đăng nhập',
    'general_phoneNumber': 'Số điện thoại',
    'general_passWord': 'Mật khẩu',
    'general_noAccount': 'Bạn không có tài khoản?',
    'general_signUp': 'Đăng ký',
    'general_name': 'Tên',
    'general_haveAccount': 'Đã có tài khoản?',
    'general_forgotPassword': 'Quên mật khẩu',
    'general_enterPhoneNumber': 'Nhập số điện thoại',
    'Monday': 'Thứ 2',
    'Tuesday': 'Thứ 3',
    'Wednesday': 'Thứ 4',
    'Thursday': 'Thứ 5',
    'Friday': 'Thứ 6',
    'Saturday': 'Thứ 7',
    'Sunday': 'Chủ nhật',
  };
}

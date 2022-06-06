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
  static const general_cantlogIn = 'general_cantlogIn';
  static const general_phoneNumber = 'general_phoneNumber';
  static const general_wrongPhoneNumber = 'general_wrongPhoneNumber';
  static const general_passWord = 'general_passWord';
  static const general_noAccount = 'general_noAccount';
  static const general_signUp = 'general_signUp';
  static const general_cantSignup = 'general_cantSignup';
  static const general_name = 'general_name';
  static const general_haveAccount = 'general_haveAccount';
  static const general_forgotPassword = 'general_forgotPassword';
  static const general_enterPhoneNumber = 'general_enterPhoneNumber';
  static const general_sendOTP = 'general_sendOTP';
  static const general_enterOTP = 'general_enterOTP';
  static const general_wrongOTP = 'general_wrongOTP';
  static const general_confirm = 'general_confirm';
  static const general_notreceiveOTP = 'general_notreceiveOTP';
  static const general_resendOTP = 'general_resendOTP';
  static const general_newPassword = 'general_newPassword';
  static const general_reenternewPassword = 'general_reenternewPassword';
  static const general_wrongPassword = 'general_wrongPassword';
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
    'general_cantlogIn': 'Please check your phone number and password again',
    'general_phoneNumber': 'Phone Number',
    'general_wrongPhoneNumber': 'Wrong phone number',
    'general_passWord': 'Password',
    'general_noAccount': 'Don\'t have an account?',
    'general_signUp': 'Sign Up',
    'general_cantSignup': 'This phone number is already in use',
    'general_name': 'Name',
    'general_haveAccount': 'Already have an account?',
    'general_forgotPassword': 'Forgot password?',
    'general_enterPhoneNumber': 'Enter your phone number',
    'general_sendOTP': 'Send OTP',
    'general_enterOTP': 'Enter OTP',
    'general_wrongOTP': 'Wrong OTP',
    'general_confirm': 'Confirm',
    'general_notreceiveOTP': 'Didn\'t receive OTP?',
    'general_resendOTP': 'Resend',
    'general_newPassword': 'New password',
    'general_reenternewPassword': 'Re-enter new password',
    'general_wrongPassword': 'Password do not match',
  };
  static const vi_VN = {
    'general_logIn': 'Đăng nhập',
    'general_cantlogIn': 'Hãy kiểm tra lại số điện thoại và mật khẩu',
    'general_phoneNumber': 'Số điện thoại',
    'general_wrongPhoneNumber': 'Số điện thoại không đúng',
    'general_passWord': 'Mật khẩu',
    'general_noAccount': 'Bạn không có tài khoản?',
    'general_signUp': 'Đăng ký',
    'general_cantSignup': 'Số điện thoại này đã được sử dụng',
    'general_name': 'Tên',
    'general_haveAccount': 'Đã có tài khoản?',
    'general_forgotPassword': 'Quên mật khẩu?',
    'general_enterPhoneNumber': 'Nhập số điện thoại',
    'general_sendOTP': 'Gửi mã OTP',
    'general_enterOTP': 'Nhập mã OTP',
    'general_wrongOTP': 'Mã OTP sai',
    'general_confirm': 'Xác nhận',
    'general_notreceiveOTP': 'Bạn chưa nhận được mã OTP?',
    'general_resendOTP': 'Gửi lại',
    'general_newPassword': 'Mật khẩu mới',
    'general_reenternewPassword': 'Nhập lại mật khẩu mới',
    'general_wrongPassword': 'Mật khẩu không trùng nhau',
    'Monday': 'Thứ 2',
    'Tuesday': 'Thứ 3',
    'Wednesday': 'Thứ 4',
    'Thursday': 'Thứ 5',
    'Friday': 'Thứ 6',
    'Saturday': 'Thứ 7',
    'Sunday': 'Chủ nhật',
  };
}

import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/utils/constant.dart';

class AppTranslation {
  static Locale? locale =
      languageCode[GetStorage().read<String>(StorageBox.Language)];

  static Map<String, Locale> languageCode = {
    'en_US': const Locale('en', 'US'),
    'vi_VN': const Locale('vi', 'VN'),
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
    'general_logIn': '????ng nh???p',
    'general_cantlogIn': 'H??y ki???m tra l???i s??? ??i???n tho???i v?? m???t kh???u',
    'general_phoneNumber': 'S??? ??i???n tho???i',
    'general_wrongPhoneNumber': 'S??? ??i???n tho???i kh??ng ????ng',
    'general_passWord': 'M???t kh???u',
    'general_noAccount': 'B???n kh??ng c?? t??i kho???n?',
    'general_signUp': '????ng k??',
    'general_cantSignup': 'S??? ??i???n tho???i n??y ???? ???????c s??? d???ng',
    'general_name': 'T??n',
    'general_haveAccount': '???? c?? t??i kho???n?',
    'general_forgotPassword': 'Qu??n m???t kh???u?',
    'general_enterPhoneNumber': 'Nh???p s??? ??i???n tho???i',
    'general_sendOTP': 'G???i m?? OTP',
    'general_enterOTP': 'Nh???p m?? OTP',
    'general_wrongOTP': 'M?? OTP sai',
    'general_confirm': 'X??c nh???n',
    'general_notreceiveOTP': 'B???n ch??a nh???n ???????c m?? OTP?',
    'general_resendOTP': 'G???i l???i',
    'general_newPassword': 'M???t kh???u m???i',
    'general_reenternewPassword': 'Nh???p l???i m???t kh???u m???i',
    'general_wrongPassword': 'M???t kh???u kh??ng tr??ng nhau',
    'Monday': 'Th??? 2',
    'Tuesday': 'Th??? 3',
    'Wednesday': 'Th??? 4',
    'Thursday': 'Th??? 5',
    'Friday': 'Th??? 6',
    'Saturday': 'Th??? 7',
    'Sunday': 'Ch??? nh???t',
  };
}

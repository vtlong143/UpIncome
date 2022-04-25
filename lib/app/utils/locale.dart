class AppTranslation {
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
  static const general_signUp = 'general_signUp';
  static const general_forgotPassword = 'general_forgotPassword';
  static const general_cancel = 'general_cancel';
  static const general_confirm = 'general_confirm';
  static const label_or = 'label_or';
  static const placeholder_inputPhoneNumber = 'placeholder_inputPhoneNumber';
  static const placeholder_inputPass = 'placeholder_inputPass';
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
  };
  static const vi_VN = {
    'general_logIn': 'Đăng nhập',
    'general_phoneNumber': 'Số điện thoại',
    'general_passWord': 'Mật khẩu',
    'general_signUp': 'Đăng ký',
    'general_forgotPassword': 'Quên mật khẩu',
    'general_cancel': 'Huỷ',
    'general_confirm': 'Xác nhận',
    'label_or': 'hoặc',
    'label_reset_setting': 'Thiết lập lại',
    'label_apply': 'Áp dụng',
    'placeholder_inputPhoneNumber': 'Nhập số điên thoại',
    'placeholder_inputPass': 'Nhập mật khẩu',
    'Monday': 'Thứ 2',
    'Tuesday': 'Thứ 3',
    'Wednesday': 'Thứ 4',
    'Thursday': 'Thứ 5',
    'Friday': 'Thứ 6',
    'Saturday': 'Thứ 7',
    'Sunday': 'Chủ nhật',
  };
}

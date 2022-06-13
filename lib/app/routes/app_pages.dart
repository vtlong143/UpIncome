import 'package:get/get.dart';

import '../modules/auth/check_otp/bindings/check_otp_binding.dart';
import '../modules/auth/check_otp/views/check_otp_view.dart';
import '../modules/auth/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/auth/forgot_password/views/forgot_password_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/phone_number/bindings/phone_number_binding.dart';
import '../modules/auth/phone_number/views/phone_number_view.dart';
import '../modules/auth/signup/bindings/signup_binding.dart';
import '../modules/auth/signup/views/signup_view.dart';
import '../modules/choose_language/bindings/choose_language_binding.dart';
import '../modules/choose_language/views/choose_language_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/transaction/bindings/transaction_binding.dart';
import '../modules/main/transaction/views/transaction_view.dart';
import '../modules/main/views/main_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
      children: [
        GetPage(
          name: _Paths.TRANSACTION,
          page: () => TransactionView(),
          binding: TransactionBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_LANGUAGE,
      page: () => ChooseLanguageView(),
      binding: ChooseLanguageBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_NUMBER,
      page: () => PhoneNumberView(),
      binding: PhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_OTP,
      page: () => CheckOtpView(),
      binding: CheckOtpBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
  ];
}

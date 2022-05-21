import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_income/app/services/user_service.dart';
import 'package:up_income/app/utils/locale.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await configApp();
  runApp(
    GetMaterialApp(
      title: "Up Income",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      locale: AppTranslation.locale,
      fallbackLocale: const Locale('vi', 'VN'),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> configApp() async {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  // await Firebase.initializeApp();

  await dotenv.load(fileName: '.env.dev');

  Get.put(UserService());
}

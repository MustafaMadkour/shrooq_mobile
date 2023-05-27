import 'package:alshrooq/core/localization/change_locale.dart';
import 'package:alshrooq/core/localization/translation.dart';
import 'package:alshrooq/core/services/services.dart';
import 'package:alshrooq/routes.dart';
import 'package:alshrooq/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alshrooq/core/constants/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      title: 'Al-Shrooq Shop',
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: AppColor.black,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          headlineMedium: TextStyle(
            color: AppColor.black,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodyLarge: TextStyle(
            height: 1.5,
            color: AppColor.grey,
            fontFamily: "ArefRuqaa",
            fontWeight: FontWeight.bold,
            // fontSize: 17,
          ),
        ),
        primarySwatch: AppColor.primaryMaterialColor,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}

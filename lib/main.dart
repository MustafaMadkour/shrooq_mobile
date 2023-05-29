import 'package:alshrooq/core/localization/change_locale.dart';
import 'package:alshrooq/core/localization/translation.dart';
import 'package:alshrooq/core/services/services.dart';
import 'package:alshrooq/routes.dart';
import 'package:alshrooq/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      theme: controller.appTheme,
      getPages: routes,
      // routes: routes,
    );
  }
}

import 'package:alshrooq/core/services/services.dart';
import 'package:alshrooq/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alshrooq/core/constants/color.dart';
import 'package:alshrooq/view/screen/onboarding.dart';

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
    return GetMaterialApp(
      title: 'Al-Shrooq Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: AppColor.black,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
          bodyLarge: TextStyle(
            height: 1.5,
            color: AppColor.grey,
            fontFamily: "Ubuntu",
            // fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        primarySwatch: AppColor.primaryMaterialColor,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}

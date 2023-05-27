import 'package:alshrooq/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterAbs extends GetxController {
  register();
  toLogin();
}

class RegisterController extends RegisterAbs {
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController passwordConfirm;

  @override
  register() {
    Get.offNamed(AppRoutes.verifyRegister);
  }

  @override
  toLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
}

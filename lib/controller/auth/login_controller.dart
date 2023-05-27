import 'package:alshrooq/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginAbst extends GetxController {
  login();
  toRegster();
  toForgetPass();
}

class LoginController extends LoginAbst {
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {}

  @override
  toRegster() {
    Get.offNamed(AppRoutes.register);
  }

  @override
  toForgetPass() {
    Get.offNamed(AppRoutes.forgetPass);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  
}

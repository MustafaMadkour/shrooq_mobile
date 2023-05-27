import 'package:alshrooq/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassAbs extends GetxController {
  checkEmail();
  toVerifyForget();
}

class ForgetPassController extends ForgetPassAbs {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  toVerifyForget() {
    Get.offNamed(AppRoutes.verifyForget);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}

import 'package:alshrooq/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassAbs extends GetxController {
  resetPass();
  toResetSuccess();
}

class ResetPassController extends ResetPassAbs {
  late TextEditingController password;
  late TextEditingController passwordConfirm;

  @override
  resetPass() {}

  @override
  toResetSuccess() {
    Get.offAllNamed(AppRoutes.resetSuccess);
  }

  @override
  void onInit() {
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
}

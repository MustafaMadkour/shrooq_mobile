import 'package:alshrooq/core/constants/route_names.dart';
import 'package:alshrooq/view/screen/auth/forgetpass.dart';
import 'package:alshrooq/view/screen/auth/login.dart';
import 'package:alshrooq/view/screen/auth/register.dart';
import 'package:alshrooq/view/screen/auth/registersuccess.dart';
import 'package:alshrooq/view/screen/auth/resetpass.dart';
import 'package:alshrooq/view/screen/auth/resetsuccess.dart';
import 'package:alshrooq/view/screen/auth/verifyforget.dart';
import 'package:alshrooq/view/screen/auth/verifyregister.dart';
import 'package:alshrooq/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // OnBoarding
  AppRoutes.onBoarrding: (context) => const OnBoarding(),

  // Auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.register: (context) => const Register(),
  AppRoutes.verifyRegister: (context) => const VerifyRegister(),
  AppRoutes.registerSuccess: (context) => const RegisterSuccess(),
  AppRoutes.forgetPass: (context) => const ForgetPass(),
  AppRoutes.verifyForget: (context) => const VerifyForget(),
  AppRoutes.resetPass: (context) => const ResetPass(),
  AppRoutes.resetSuccess: (context) => const ResetSuccess(),
};

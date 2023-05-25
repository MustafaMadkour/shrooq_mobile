import 'package:alshrooq/core/constants/route_names.dart';
import 'package:alshrooq/view/screen/auth/login.dart';
import 'package:alshrooq/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoarrding:(context) => const OnBoarding(), 
  AppRoutes.login: (context) => const Login(),
};
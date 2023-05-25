import 'package:alshrooq/core/constants/route_names.dart';
import 'package:alshrooq/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
};
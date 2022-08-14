import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/sginup.dart';
import 'package:ecommerce/view/screen/ondoarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.signUp: (context) => const SginUp(),
  Approutes.onBorading: (context) => const OnBoarding(),
};

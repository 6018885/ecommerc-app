import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/check_email.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/sginup.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:ecommerce/view/screen/ondoarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.signUp: (context) => const SginUp(),
  Approutes.forgetPassword: (context) => const ForGetPassword(),
  Approutes.verfiyCode: (context) => const Verfiycode(),
  Approutes.resetPassword: (context) => const ResetPasswoer(),
  Approutes.checkemail: (context) => const CheckEmail(),
  Approutes.successResetpassword: (context) => const SuccessResetPassword(),
  Approutes.successSignUp: (context) => const SuccessSignUp(),
  Approutes.onBorading: (context) => const OnBoarding(),
};

import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForGetPasswordController extends GetxController {
  checkEmsil();
  goToVeryfiycode();
}

class ForGetPasswordControllerImp extends ForGetPasswordController {
  late TextEditingController email;

  @override
  checkEmsil() {}

  @override
  goToVeryfiycode() {
    Get.offNamed(Approutes.verfiyCode);
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

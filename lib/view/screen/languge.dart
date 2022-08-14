import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/locallization/changelocal.dart';
import 'package:ecommerce/view/wedget/languge/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languge extends GetView<LocaleController> {
  const Languge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1".tr,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonlang(
                textbutton: "Ar",
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed(Approutes.onBorading);
                },
              ),
              CustomButtonlang(
                textbutton: "En",
                onPressed: () {
                  controller.changeLang("en");
                  Get.toNamed(Approutes.onBorading);
                },
              ),
            ],
          )),
    );
  }
}

import 'package:ecommerce/controller/auth/checkemail_controller.dart';
import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextformauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text('Check Email'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitelAuth(text: "Success SignUp".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text:
                  "please Enter Your Email Address To Recive A Verification Code"
                      .tr),
          const SizedBox(height: 23),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "pleas Enter Your Email".tr,
            iconData: Icons.email_outlined,
            labeltext: "Email".tr,
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "Check".tr,
              onPressed: () {
                controller.goToSuccessSignUp();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}

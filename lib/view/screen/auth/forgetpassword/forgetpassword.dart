import 'package:ecommerce/controller/auth/forgetpassword.dart';

import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextformauth.dart';

import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForGetPassword extends StatelessWidget {
  const ForGetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForGetPasswordControllerImp controller =
        Get.put(ForGetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text('ForgetPassword',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              const CustomTextTitelAuth(
                text: "Check Email",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextBodyAuth(
                text:
                    "please Enter Your Email Address To Recive A Verification Code ",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              CustomButtomAuth(
                text: "Check",
                onPressed: () {
                  controller.goToVeryfiycode();
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

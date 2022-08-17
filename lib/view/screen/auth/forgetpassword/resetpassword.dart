import 'package:ecommerce/controller/auth/resetpassword_controoler.dart';
import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextformauth.dart';

import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswoer extends StatelessWidget {
  const ResetPasswoer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text('Reset Password',
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
                text: "New Password",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextBodyAuth(
                text: "Pleas Enter Your New Password",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                iconData: Icons.lock_outlined,
                labeltext: "Password",
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Re Enter Your Password",
                iconData: Icons.lock_outlined,
                labeltext: "Password",
              ),
              CustomButtomAuth(
                text: "Save",
                onPressed: () {
                  controller.goToSuccessResetPassword();
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

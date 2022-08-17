import 'package:ecommerce/controller/auth/verfiycode_controoler.dart';

import 'package:ecommerce/core/constant/colore.dart';

import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class Verfiycode extends StatelessWidget {
  const Verfiycode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text('Verification Code',
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
                text: "Check Code",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextBodyAuth(
                text: "Please Enter The Digit Code Sent To",
              ),
              const SizedBox(
                height: 20,
              ),
              OtpTextField(
                borderRadius: BorderRadius.circular(15),
                fieldWidth: 50.0,
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                },
                //runs when every textfield is filled
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

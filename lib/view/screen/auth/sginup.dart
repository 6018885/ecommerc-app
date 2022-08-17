import 'package:ecommerce/controller/auth/signupcontrooler.dart';
import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextformauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextsignuoorsignin.dart';
import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SginUp extends StatelessWidget {
  const SginUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text('Sgin Up',
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
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextBodyAuth(
                text:
                    "Sign Up With Your Email And Password OR Continue With Social Media",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                mycontroller: controller.username,
                hinttext: "Enter Your Username",
                iconData: Icons.person_outline_outlined,
                labeltext: "Password",
              ),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                iconData: Icons.lock_outlined,
                labeltext: "Password",
              ),
              CustomTextFormAuth(
                mycontroller: controller.phone,
                hinttext: "Enter Your phone",
                iconData: Icons.phone_iphone_outlined,
                labeltext: "Password",
              ),
              CustomButtomAuth(
                text: "Sgin Up",
                onPressed: () {
                  controller.signUp();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextSignUpOrSignIn(
                textone: " have an account ?",
                texttwo: "SignIn",
                onTap: () {
                  controller.goToSignIn();
                },
              ),
            ],
          ),
        ));
  }
}

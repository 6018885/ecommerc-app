import 'package:ecommerce/controller/auth/logincontroller.dart';
import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextformauth.dart';
import 'package:ecommerce/view/wedget/auth/customtextsignuoorsignin.dart';
import 'package:ecommerce/view/wedget/auth/logoauth.dart';
import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:ecommerce/view/wedget/auth/customtexttitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controoler = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text('Sgin in',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              const LogoAuth(),
              const CustomTextTitelAuth(
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextBodyAuth(
                text:
                    "Sign In With Your Email And Password OR Continue With Social Media",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                mycontroller: controoler.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              CustomTextFormAuth(
                mycontroller: controoler.password,
                hinttext: "Enter Your Password",
                iconData: Icons.lock_outlined,
                labeltext: "Password",
              ),
              const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
              CustomButtomAuth(
                text: "Sgin in",
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextSignUpOrSignIn(
                textone: "Don't have an account ?",
                texttwo: "SignUp",
                onTap: () {
                  controoler.goToSignUp();
                },
              )
            ],
          ),
        ));
  }
}

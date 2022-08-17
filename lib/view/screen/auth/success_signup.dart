import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/view/wedget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/wedget/languge/customtextbodyauth.dart';
import 'package:flutter/material.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  size: 200,
                  color: AppColor.primaryColor,
                ),
              ),
              const CustomTextBodyAuth(
                text: "..............",
              ),
              const CustomTextBodyAuth(
                text: "..............",
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                child: CustomButtomAuth(
                  text: "Go To Login",
                  onPressed: () {
                    //controller.signUp();
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          )),
    );
  }
}

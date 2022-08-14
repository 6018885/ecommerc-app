import 'package:ecommerce/controller/onboarding_controllar.dart';
import 'package:ecommerce/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPagechanges(val);
        },
        itemCount: onBoardinglist.length,
        itemBuilder: (context, i) => Column(children: [
              Image.asset(
                onBoardinglist[i].image!,
                //width: 250,
                //height: 230,
                //fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 80,
              ),
              Text(onBoardinglist[i].title!,
                  style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 17,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardinglist[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
            ]));
  }
}

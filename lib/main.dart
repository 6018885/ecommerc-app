import 'package:ecommerce/core/constant/colore.dart';
import 'package:ecommerce/core/locallization/transation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/languge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/locallization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
          headline2: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
          bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15),
          bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Languge(),
      routes: routes,
    );
  }
}

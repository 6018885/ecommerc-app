import 'package:ecommerce/core/constant/colore.dart';
import 'package:flutter/material.dart';

class CustomButtonlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonlang({Key? key, required this.textbutton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

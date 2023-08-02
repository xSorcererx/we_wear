import 'package:flutter/material.dart';
import 'package:wewear/presentation/modules/cart/textstyle.dart';

class CustomElevetedBtn extends StatelessWidget {
  const CustomElevetedBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          // Color(0xff267C9D),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          text,
          style: textstyle(20, Colors.white, FontWeight.bold),
        ));
  }
}

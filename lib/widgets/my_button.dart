import 'package:crack_pay/constants/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key, required this.buttonText, required this.buttonColor});
  final String buttonText;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
        // border: Border.all(
        //   style: BorderStyle.none,
        // ),
        borderRadius: BorderRadius.circular(25),
        color: buttonColor,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          textAlign: TextAlign.center,
          buttonText,
          style: TextStyle(
              color: buttonColor == kButton ? Colors.white : kButton,
              fontSize: 12),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../colors/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: secondaryColor,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: textBaseColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              width: 20,
            ),
            Icon(
              Icons.arrow_right_alt,
              color: textBaseColor,
            )
          ],
        ),
      ),
    );
  }
}

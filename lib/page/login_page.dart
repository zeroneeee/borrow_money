import 'package:borrow_money/colors/colors.dart';
import 'package:borrow_money/components/button.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

// wait create state check login and authen page

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("This Login Page")),
        elevation: 0,
        backgroundColor: secondaryColor,
        foregroundColor: textBaseColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/green_coin.png'),
            ),
            MyButton(
              text: "login",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

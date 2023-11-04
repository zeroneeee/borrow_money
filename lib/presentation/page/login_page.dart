import 'package:borrow_money/presentation/resources/app_colors.dart';
import 'package:borrow_money/presentation/components/button.dart';
import 'package:flutter/material.dart';
import 'demo_dashbord.dart';

// wait create state check login and authen page

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("This Login Page")),
        elevation: 0,
        backgroundColor: AppColors.secondaryColor,
        foregroundColor: AppColors.textBaseColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/presentation/images/green_coin.png'),
            ),
            MyButton(
              text: "login",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PieChartSample2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

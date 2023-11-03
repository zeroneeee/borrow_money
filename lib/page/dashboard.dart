import 'package:flutter/material.dart';

import '../colors/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(color: secondaryColor),
          ],
        ),
      ),
    );
  }
}

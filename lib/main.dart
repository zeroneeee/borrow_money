import 'package:borrow_money/presentation/page/login_page.dart';
import 'package:borrow_money/presentation/resources/app_listdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/page/demo_dashbord.dart';
import 'presentation/page/page_history.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (create) => ListDataDemo(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
      routes: {
        '/historypagr': (context) => const HistoryPage(),
        '/dashbordpage': (context) => const PieChartSample2(),
        '/loginpage': (context) => const LogInPage(),
      },
    );
  }
}

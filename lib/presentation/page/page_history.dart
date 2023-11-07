import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/app_listdata.dart';
import '../widgets/data_oder.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // get list data base
    final data = context.read<ListDataDemo>();
    final listDataDemo = data.listDataDemo;
    return Scaffold(
      appBar: AppBar(title: const Text("History")),
      body: Column(children: [
        // History list
        const Text("Histroty"),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: listDataDemo.length,
            itemBuilder: (context, index) => DataOder(
              dataDemo: listDataDemo[index],
            ),
          ),
        ),
      ]),
    );
  }
}

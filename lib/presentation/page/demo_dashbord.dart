import 'package:borrow_money/presentation/resources/app_listdata.dart';
import 'package:borrow_money/presentation/widgets/data_oder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/button.dart';
import '../resources/app_resources.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;
  //navigate to borrow detils page
  // void navigateToBorrowDetails(int index) {
  //   // get list data base
  //   final data = context.read<ListDataDemo>();
  //   final listDataDemo = data.listDataDemo;
  // }

  @override
  Widget build(BuildContext context) {
    // get list data base
    final data = context.read<ListDataDemo>();
    final listDataDemo = data.listDataDemo;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashborad page"),
        leading: const Icon(Icons.menu_book),
        backgroundColor: AppColors.secondaryColor,
        elevation: 0,
        foregroundColor: AppColors.textBaseColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.3,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: PieChart(
                            PieChartData(
                              pieTouchData: PieTouchData(
                                touchCallback:
                                    (FlTouchEvent event, pieTouchResponse) {
                                  setState(() {
                                    if (!event.isInterestedForInteractions ||
                                        pieTouchResponse == null ||
                                        pieTouchResponse.touchedSection ==
                                            null) {
                                      touchedIndex = -1;
                                      return;
                                    }
                                    touchedIndex = pieTouchResponse
                                        .touchedSection!.touchedSectionIndex;
                                  });
                                },
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 60,
                              sections: showingSections(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text("มูลค่าการยืม"),
              ],
            ),

            const SizedBox(height: 25),

            // List view show record data.

            const Text("ประวัติ"),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listDataDemo.length,
                itemBuilder: (context, index) => DataOder(
                  dataDemo: listDataDemo[index],
                ),
              ),
            ),
            const MyButton(text: "สร้าง"),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.secondaryColor,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.contentColorYellow,
            value: 60,
            title: '60%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}

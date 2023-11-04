import 'package:borrow_money/presentation/resources/app_datademo.dart';
import 'package:flutter/material.dart';

class DataOder extends StatelessWidget {
  final DataDemo dataDemo;

  const DataOder({super.key, required this.dataDemo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dataDemo.title,
                style: const TextStyle(fontSize: 20),
              ),
              Text(dataDemo.description),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${dataDemo.price} บาท",
                style: const TextStyle(fontSize: 20),
              ),
              Text(dataDemo.name.toString())
            ],
          )
        ],
      ),
    );
  }
}

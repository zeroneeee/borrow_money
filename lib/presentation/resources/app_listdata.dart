import 'package:flutter/material.dart';

import 'app_datademo.dart';

class ListDataDemo extends ChangeNotifier {
  final List<DataDemo> _listDataDemo = [
    DataDemo(
        title: "หมูกระทะ",
        description: "หมูกระทะร้านย่างเนย ธรรมศาสตร์",
        price: 350,
        name: ["โด้", "เรย์"]),
    DataDemo(
        title: "หมูกระทะ",
        description: "หมูกระทะร้านย่างเนย ธรรมศาสตร์",
        price: 350,
        name: ["โด้", "เรย์"]),
    DataDemo(
        title: "หมูกระทะ",
        description: "หมูกระทะร้านย่างเนย ธรรมศาสตร์",
        price: 350,
        name: ["โด้", "เรย์"]),
    DataDemo(
        title: "หมูกระทะ",
        description: "หมูกระทะร้านย่างเนย ธรรมศาสตร์",
        price: 350,
        name: ["โด้", "เรย์"]),
    DataDemo(
        title: "หมูกระทะ",
        description: "หมูกระทะร้านย่างเนย ธรรมศาสตร์",
        price: 350,
        name: ["โด้", "เรย์"]),
  ];

  //geter methods
  List<DataDemo> get listDataDemo => _listDataDemo;
}

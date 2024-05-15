import 'package:flutter/material.dart';
import 'package:canteen/upload.dart';

import 'package:canteen/DashboardKantin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kantin',
      home: DashboardKantin(),
    );
  }
}

import 'package:bmi_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff03051A),
      ),
      home: HomeView(),
    );
  }
}


// 0xff17172F , 0xff03051A , 0xff04061D
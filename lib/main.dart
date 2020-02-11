import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';



void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     home: InputPage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1b2b38),
        primaryColor: Color(0xFF1b2b38),

      ),

      initialRoute: '/',
    );
  }
}


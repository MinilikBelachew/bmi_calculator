import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp( BMICaculator());
}

class BMICaculator extends StatelessWidget {
  const BMICaculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),

      home: Inputpage(),
    );
  }
}


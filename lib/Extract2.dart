
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Extract1.dart';

class Extractwidght2 extends StatelessWidget {
  const Extractwidght2({this.icon,required this.lable});

  final IconData? icon ;
  final String lable;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15.0),
        Text(
          lable,
          style:
          TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
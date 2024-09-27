
import 'package:flutter/material.dart';
import 'constant.dart';
import 'input_page.dart';
// const containercolor = Color(0xFF1D1E33);
class Extract extends StatelessWidget {
  Extract({required this.cardChild, this.color1});
   Color? color1=Colors.red;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: containercolor, borderRadius: BorderRadius.circular(15)),
    );
  }
}
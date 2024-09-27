import 'package:flutter/material.dart';
import 'constant.dart';
class bottombutton extends StatelessWidget {
  bottombutton({
    required this.ontap,
    required this.text
  });
  final VoidCallback ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage()));
      // },
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottombuttonheight,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}

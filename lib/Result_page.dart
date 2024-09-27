import 'package:bmi_calculator/Extract1.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'button1.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({required this.bmiresult,required this.interpretation,required this.resulttext});


  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CACULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
               alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kyourresult,
              ),
            )),
            Expanded(
                flex: 5,
                child: Extract(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resulttext,
                        style: kresultTextstyle,
                      ),
                      Text(
                        bmiresult,
                        style: kResult,
                      ),
                      Text(
                        interpretation,
                        style: kResult2,
                      )
                    ],
                  ),
                )),
            bottombutton(
                ontap:(){Navigator.pop(context);},
                text: 'RE-CACULATE')
          ],
        ));
  }
}

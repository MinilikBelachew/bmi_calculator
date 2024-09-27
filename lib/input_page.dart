import 'package:flutter/material.dart';
import 'Extract1.dart';
import 'Extract2.dart';
import 'constant.dart';
import 'Result_page.dart';
import 'button1.dart';
import 'resultfunction.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender selectedgender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI_CACULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectedgender = Gender.male;
                    },
                    child: Extract(
                      color1: selectedgender == Gender.male
                          ? containercolor2
                          : containercolor,
                      cardChild: Extractwidght2(
                        icon: Icons.male,
                        lable: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: Extract(
                      color1: selectedgender == Gender.male
                          ? containercolor
                          : containercolor2,
                      cardChild: Extractwidght2(
                        icon: Icons.female,
                        lable: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: Extract(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Center(
                      child: Text(
                        'Height',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberstyle,
                        ),
                        Text(
                          'cm',
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          trackHeight: 1,
                          thumbColor: Colors.blue,
                          overlayColor: Color(0x1A73BB89),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 14),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Extract(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RoundIconButton(
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icons.minimize)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Extract(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          age.toString(),
                          style: kNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RoundIconButton(
                                onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icons.minimize)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
            bottombutton(

              text:'CACULATE YOUR BMI',
                ontap: (){
               CalculatorBrain calc= CalculatorBrain(height: height,weight: weight);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage(
     bmiresult: calc.calculateBMI(),
       interpretation: calc.getInterpretation(),



        resulttext: calc.getResult(),
      )));
     },
            )
          ],
        ));
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onpressed});
  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon as IconData?),
      onPressed: () {
        onpressed();
      },
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

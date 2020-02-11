import 'package:bmi_calculator/color_drawerz.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'calculator_brain.dart';
import 'result_page.dart';
import 'color_drawerz.dart';




enum Gender{male, female}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectGender;
  int height = 180;
  int weight = 60;
  int age =19;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: SafeArea(
        left: false,
        top: true,
        right: false,
        bottom: true,
        child: Drawer(
          elevation: 100.0,

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Center(child: Text('SELECT COLOR',

              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,

              ),)),
              drawer_color(color_draw: Colors.green,

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Colors.green;
                    });
                  }
              ),
              drawer_color(color_draw: Colors.yellow,

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Colors.yellow;
                    });
                  }
              ),
              drawer_color(color_draw: Colors.red,

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Colors.red;
                    });
                  }

              ),
              drawer_color(color_draw: Color(0XFFCE93D8),

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Color(0XFFCE93D8);
                    });
                  }
              ),
              drawer_color(color_draw: Colors.blue,

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Colors.blue;
                    });
                  }
              ),
              drawer_color(color_draw: Color(0XFF4A148C),

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Color(0XFF4A148C);
                    });
                  }
              ),
              drawer_color(color_draw: Color(0XFF18FFFF),

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Color(0XFF18FFFF);
                    });
                  }
              ),
              drawer_color(color_draw: Colors.black,

                  onPress:  (){
                    setState(() {
                      Navigator.pop(context);
                      KThemecolor = Colors.black;
                    });
                  }
              )

            ],
          ),

        ),
      ),

      appBar: AppBar(
        backgroundColor: KThemecolor,
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: reusablecard(
                          onPress: () {
                            setState(() {
                              selectGender = Gender.male;
                            });
                          },
                          colour: selectGender == Gender.male
                              ? KActiveCardColor
                              : KInactiveColor,
                          cardChild: IconContent(
                              icon: FontAwesomeIcons.mars, label: 'MALE'))
                  ),
                  Expanded(

                    child: reusablecard(
                      onPress: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      colour: selectGender == Gender.female
                          ? KActiveCardColor
                          : KInactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE',),

                    ),
                  ),
                ],
              )
          ),

          Expanded(
            child: reusablecard(colour: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Container(
                    child: Text(
                      'HEIGHT',
                      style: textStyle,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: textNum,
                      ),
                      Text(
                        'CM',
                        style: textStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: KThemecolor,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10.0),
                      overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20.0),
                    ),
                    child: Slider(

                      inactiveColor: Colors.black,
                      min: 120,
                      max: 400,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),),

          ),

          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: reusablecard(colour: KActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight',
                            style: textStyle,),
                          Text(weight.toString(),
                              style: textNum),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                setState(() {
                                  weight++;

                                });
                                }
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }),
                            ],
                          )

                        ],
                      ),),

                  ),
                  Expanded(
                    child: reusablecard(colour: KActiveCardColor,
                            cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Text('Age',
                            style: textStyle,),
                            Text(age.toString(),
                            style: textNum),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.plus,
                            onPressed: () {
                            setState(() {
                            age++;

                            });
                            }
                            ),
                            SizedBox(
                            width: 10,
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                            onPressed: (){
                            setState(() {
                            age--;
                            });
                            }),
                            ],
                            )

                            ],
                            ),
                    ),

                  ),
                ],
              )
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => BMIresult(
                        BMInumber: calc.calculateBMI(),
                        BMIAdvice: calc.GetInterpretation(),
                        BMIResult: calc.GetResult(),

                    )
                    ),);

                },
            child: Container(

              child: Center(child: Text('CALCULATE')),
              color: KThemecolor,
              height: KContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 5.0),
            ),
          )
        ],

      ),


    );
  }

}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
    onPressed: onPressed,
    elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.blueGrey,
    );
  }
}











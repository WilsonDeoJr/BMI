import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constant.dart';
import 'input_page.dart';
import 'calculator_brain.dart';

class BMIresult extends StatelessWidget {
  BMIresult({@required this.BMInumber, @required this.BMIAdvice, @required this.BMIResult});

  String BMInumber;
  String BMIResult;
  String BMIAdvice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('BMI Calculator'),
        backgroundColor: KThemecolor,
      ),
      body: Column(
        children: <Widget>[

            Container(
              height: 100.0,
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                  ),
                ),
              ),


            ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(10.0),
                color: KActiveCardColor,
              ),


              margin: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[


                  Padding(
                    padding: KPadding,
                    child: Center(
                      child: Text(BMIResult.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green,
                        ),),
                    ),
                  ),
                   Padding(
                     padding: KPadding,
                     child: Center(
                       child: Text(
                           BMInumber,
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold
                        ),
                  ),
                     ),
                   ),
                  Padding(
                    padding: KPadding,
                    child: Center(
                      child: Text(
                        BMIAdvice,
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),

              ],


            ),
          ),
          ),


             GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Container(
                color: KThemecolor,
                height: KContainerHeight,
                width: double.infinity,
                margin: EdgeInsets.only(top: 5.0),
                child: Center(child: Text('RE-CALCULATE')),

            ),
             ),

        ],

      )
    );
  }
}

import 'dart:math';


class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;







  String calculateBMI(){
     _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String GetResult(){
    if( _bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String GetInterpretation(){
    if( _bmi >= 25){
      return 'You need to diet';
    }else if(_bmi > 18.5){
      return 'ALl goood, keep it up!';
    }else{
      return 'Eat more please!';
    }
  }
}
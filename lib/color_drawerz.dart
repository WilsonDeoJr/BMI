import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class  drawer_color extends StatelessWidget {

  drawer_color({@required this.color_draw, @required this.onPress});
  final Color color_draw;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[
        GestureDetector(
          onTap: onPress,
          child: Container(

            height: 50.0,
            color: color_draw,


          ),
        )
      ],





      );


  }


}

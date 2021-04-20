import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePlace(),
      ),
    ),
  );
}

class DicePlace extends StatefulWidget {
  @override
  _DicePlaceState createState() => _DicePlaceState();
}

class _DicePlaceState extends State<DicePlace> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
  void diceNumber(){

    leftDiceNumber = Random().nextInt(6);
    RightDiceNumber = Random().nextInt(6);


  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[

          Expanded(

              child: FlatButton(
                onPressed: (){
                  setState(() {
                    diceNumber();

                  });

                },
                child: (
                    Image.asset('images/dice$leftDiceNumber.png')
                ),
              )),
          Expanded(

              child: FlatButton(
                onPressed: (){
                  setState(() {
                    diceNumber();
                  });
                },
                child: (
                    Image.asset('images/dice$RightDiceNumber.png')
                ),
              )),
        ],
      ),
    );
  }
}







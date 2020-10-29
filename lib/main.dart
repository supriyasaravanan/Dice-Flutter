import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice=1;
  int rightDice=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children: [
          Expanded(
            child:FlatButton(
              onPressed: ()
              {
                setState(() {
                  leftDice=Random().nextInt(6)+1;
                });
                print('dice1 is pressed');
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
              child:FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDice=Random().nextInt(6)+1;
                    });
                    print('dice2 is pressed');
                  },
                  child: Image.asset('images/dice$rightDice.png'))
          ),
        ],
      ),
    );
  }
}

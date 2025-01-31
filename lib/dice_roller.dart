import 'package:flutter/material.dart';
import 'dart:math';

final randomNum=Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State{

 var activeDice=2;
 
 void rollDice(){
     setState(() {
       activeDice=randomNum.nextInt(6)+1;
     });
  
 }

  @override
  Widget build(context) {
      return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$activeDice.png',
              width: 200,
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 24),
                  ),
                  child: const Text('Roll Dice'),
                ))
          ],
        );
  }

}


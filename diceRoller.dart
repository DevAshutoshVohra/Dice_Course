import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dice/styled_txt.dart';



class DiceRoller extends StatefulWidget{



 const   DiceRoller({super.key});
@override
State<DiceRoller>createState(){
return _DiceRollerState();


}



}

class _DiceRollerState extends State<DiceRoller> {

@override

  var num=1;
var acTiveDiceImage='assets/images/dice-1.png';

void rollDice(){

  setState( () {
    
    num=Random().nextInt(6)+1;
    
     acTiveDiceImage='assets/images/dice-$num.png';
      print('Button Pressed');


  } );

}

Widget build(context)
{
  return Column(children:     [
          StyledTxt('Flutter Amazing'),
          StyledTxt('Flutter Amazing'),
          StyledTxt('Flutter Amazing'),
          StyledTxt('Flutter Amazing'),
          StyledTxt('Flutter Amazing'),
          StyledTxt('Flutter Amazing'),
          Text.rich(TextSpan(children: [
            TextSpan(text: ' Hey There '),
            TextSpan(
                text: ' USING ',
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan)),
            TextSpan(
                text: ' Text',
                style: TextStyle(
                  fontSize: 22,
                )),
            TextSpan(
                text: '.',
                style: TextStyle(
                  fontSize: 96,
                )),
            TextSpan(
                text: 'rich ',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: AutofillHints.creditCardSecurityCode,
                    fontWeight: FontWeight.normal,
                    fontSize: 75)),
            //
            TextSpan(
                text: ' Property For Styling Text With Multiple Style',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                )),
          ]))
        ,
         Image.asset(acTiveDiceImage,width: 200,),
         SizedBox(),
          TextButton(style: TextButton.styleFrom(padding: EdgeInsets.all(32),foregroundColor: Colors.white,textStyle:const TextStyle(fontSize:77 )),
        
        
        onPressed: rollDice, child:const Text('Roll Dice'),
            )
         ],);
}



}
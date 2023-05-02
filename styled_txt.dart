import 'package:flutter/material.dart';



class StyledTxt extends StatelessWidget{
final String str;  
 const StyledTxt( this.str,{super.key});

  @override

Widget build(context)
{
  return 
   Text(
                  str,
                  style:const TextStyle(color: Colors.orange, fontSize: 32,fontStyle: FontStyle.italic),
                );
               
                }


}
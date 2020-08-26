 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  final List answerText;

  Answer(this.selectHandler, this.answerText);
   @override
   Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       child: RaisedButton(

         textColor: Colors.white,
         child: Text(answerText.toString()),
         color: Colors.red,
         onPressed: selectHandler,
       
       ),
     );
   }
 }

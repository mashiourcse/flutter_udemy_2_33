import 'package:flutter/material.dart';
import 'package:flutter_appppp/question.dart';
import 'package:flutter_appppp/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

var questions = [

    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : ['Black', 'Red', 'Green', 'White'],
    },

    {
      'questionText' : 'What\'s your favorite animal?',
      'answers' : ['Cat', 'Dog', 'Gorilla', 'Tiger'],
    },

    {
      'questionText' : 'What\'s your favorite Game?',
      'answers' : ['Valorant', 'PUBGM', 'CODM', 'Fortnite'],
    },

  ];

  var _questionIndex = 0;
  var ans;
  void _answerQuestion(){

    setState(() {
      
      _questionIndex = _questionIndex + 1;
        if(_questionIndex==3)
          _questionIndex = 0;
    });

    print('Answer Chosen!');
     print(_questionIndex);

  
  }

  @override
  Widget build(BuildContext context) {

       
    var ans = (questions[_questionIndex]['answers'] as List).map( (question){
    
    return question;
  
      }).toList();

   // var ans = x[_questionIndex]['answers'];


    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

        ),

        body: Column(
          children: <Widget>[

            //Text(questions.elementAt(questionIndex),),

            Question(questions[_questionIndex]['questionText']),

                    
            Answer(_answerQuestion,ans)
          ],
        ),

      ),
    );

  }
}

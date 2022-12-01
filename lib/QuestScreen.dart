import 'package:flutter/material.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/challenge.dart';
import 'package:twig_app/style.dart';

class QuestScreen extends StatefulWidget{
  @override
  _QuestScreenState createState() => _QuestScreenState();
}
class _QuestScreenState extends State<QuestScreen>{
  Widget createQuest(String text, double left, double top, void Function() onPressed){
    return Positioned(
        left: left,
        top: top,
        child: RawMaterialButton(
          fillColor: mydarkblue,
          onPressed: onPressed,
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
          shape: CircleBorder(),
          padding: EdgeInsets.all(15.0),
        )
    );
  }
  @override
  Widget build(BuildContext context){
    return Stack(
        children: [
          Image.asset('assets/questpage.png', ),
          Positioned(
              left: 130,
              top: 600,
              child: Image.asset('assets/man.png', height: 200,)
          ),
          createQuest("1", 350, 500, (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChallengeScreen()));
          }),
          createQuest("2", 130, 450, (){ print("challenge 2"); }),
          createQuest("3", 150, 250, (){ print("challenge 3"); }),
          createQuest("4", 380, 100, (){ print("challenge 4"); }),
          createQuest("5", 100, 10, (){ print("challenge 5"); }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: backButton(context),
          ),
        ]
    );
  }
}
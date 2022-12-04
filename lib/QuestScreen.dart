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
          Image.asset('assets/questpage.png',
            height: 1500,
          ),
          Positioned(
              left: 110,
              top: 580,
              child: Image.asset('assets/man.png', height: 150,)
          ),
          createQuest("1", 330, 530, (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChallengeScreen()));
          }),
          createQuest("2", 80, 500, (){ print("challenge 2"); }),
          createQuest("3", 150, 350, (){ print("challenge 3"); }),
          createQuest("4", 330, 180, (){ print("challenge 4"); }),
          createQuest("5", 50, 100, (){ print("challenge 5"); }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: backButton(context),
          ),
        ]
    );
  }
}
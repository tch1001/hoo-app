import 'package:flutter/material.dart';
import 'package:twig_app/QuestScreen.dart';
import 'package:twig_app/WaterUsageScreen.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

import 'TrackWaterUsage.dart';

class ChallengeScreen extends StatefulWidget{
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}
class _ChallengeScreenState extends State<ChallengeScreen>{

  bool switchState = false;
  static const String textLabelDone = "Good Job!";
  static const String textLabelNotDone = "Mark As Complete: ";
  String textLabel = textLabelNotDone;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context),
        bottomNavigationBar: mybottomnavbar(context),
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButton: backButton(context),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Text("Challenge 1:", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Image.asset('assets/washing.png', height: 150),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Save the water from washing vegetables to water your plants!",
                  style: myTextStyle(Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              createRichText("XXX users have completed this challenge!", () { }),
              createRichText("Did you know that doing so can save you XXX litres of water?", () { }),
              createRichText("Fun Fact: Doing this for 1 year will save XX olympics-sized pools of water!", () { }),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text(textLabel,
                        style: myTextStyle(Colors.white),
                        textAlign: TextAlign.center,
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 150,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          onChanged: (state){
                            setState(() {
                              switchState = state;
                              if(state) {
                                textLabel = textLabelDone;
                              }else{
                                textLabel = textLabelNotDone;
                              }
                            });
                          },
                          value: switchState,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100)
            ],
          ),
        )
    );
  }
}
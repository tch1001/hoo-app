import 'package:flutter/material.dart';
import 'package:twig_app/QuestScreen.dart';
import 'package:twig_app/WaterUsageScreen.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

import 'TrackWaterUsage.dart';

class RewardScreen extends StatefulWidget{
  @override
  _RewardScreenState createState() => _RewardScreenState();
}
class _RewardScreenState extends State<RewardScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: myappbar(context, invertedColors:true),
      bottomNavigationBar: mybottomnavbar(context, invertedColors:true),
      backgroundColor: Colors.white,
      floatingActionButton: backButton(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: mylightblue,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text("XXX Reward has been added to your bank!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
                SizedBox(height: 20),
                Text("Keep up the good work!",
                  style: TextStyle(
                      color: mydarkblue,
                      fontSize: 20.0
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
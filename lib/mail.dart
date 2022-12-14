import 'package:flutter/material.dart';
import 'package:twig_app/QuestScreen.dart';
import 'package:twig_app/WaterUsageScreen.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/reward.dart';
import 'package:twig_app/style.dart';

import 'TrackWaterUsage.dart';

class MailScreen extends StatefulWidget{
  @override
  _MailScreenState createState() => _MailScreenState();
}
class _MailScreenState extends State<MailScreen>{
  Widget createClickableNotification(String title, String details, void Function() onPressed){
    return InkWell(
      onTap: onPressed,
        child: createNotification(title, details),
    );
  }
  Widget createNotification(String title, String details){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: mylightblue,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(details,
              style: TextStyle(
                  color: mydarkblue,
                  fontSize: 20.0
              ),
            ),
          ),
        ],
      ),
    );
  }
  void openReward(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardScreen()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context, invertedColors:true),
        bottomNavigationBar: mybottomnavbar(context, invertedColors:true),
        backgroundColor: Colors.white,
        floatingActionButton: backButton(context),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: mylightblue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  alignment: Alignment.center,
                  child: Text("Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0
                    ),
                  ),
                ),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                createNotification("Congratulations!", "You have kept to your water usage target for 3 days in a row!"),
                createClickableNotification("Click here to collect your reward!", "For completing challenge number 1", (){
                  openReward();
                }),
                SizedBox(height: 300)
              ],
            ),
          ),
        )
    );
  }
}
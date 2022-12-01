import 'package:flutter/material.dart';
import 'package:twig_app/QuestScreen.dart';
import 'package:twig_app/WaterUsageScreen.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

import 'TrackWaterUsage.dart';

class MailScreen extends StatefulWidget{
  @override
  _MailScreenState createState() => _MailScreenState();
}
class _MailScreenState extends State<MailScreen>{
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
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
                createNotification("Congratulations!", "You have kept to your water usage target for XX days in a row!"),
                createNotification("Click here to collect your reward!", "For completing challenge number X"),
              ],
            ),
          ),
        )
    );
  }
}
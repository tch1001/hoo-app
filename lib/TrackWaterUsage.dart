import 'package:flutter/material.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

class TrackWaterUsage extends StatefulWidget{
  @override
  _TrackWaterUsageState createState() => _TrackWaterUsageState();
}
class _TrackWaterUsageState extends State<TrackWaterUsage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context),
        bottomNavigationBar: mybottomnavbar(context),
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("assets/usagegraph.png", height: 250)
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () { print("hi"); },
                  style: buttonStyle,
                  child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(child: Image.asset("assets/watericon.png", height: 100,), padding: EdgeInsets.all(10.0),),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          child: Text("This Week:", style: buttonTextStyle),
                                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0)
                                      )
                                  ),
                                  Padding(
                                      child: Text("XXX litres", style: buttonTextStyle),
                                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0)
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ]
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () { print("hi"); },
                  style: buttonStyle,
                  child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("INDIVIDUAL USAGE", style: TextStyle(
                                color: mydarkblue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                        Column(
                          children: [
                            createLocationBasedUsage("assets/kitchen.png", 'TAP 1: Kitchen', 'XX litres used'),
                            SizedBox(height: 10),
                            createLocationBasedUsage("assets/bedroom.png", 'TAP 2: Master Bedroom', 'XX litres used'),
                            SizedBox(height: 10)
                          ],
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
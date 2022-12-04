import 'package:flutter/material.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

class WaterUsageScreen extends StatefulWidget{
  @override
  _WaterUsageScreenState createState() => _WaterUsageScreenState();
}
class _WaterUsageScreenState extends State<WaterUsageScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context),
        bottomNavigationBar: mybottomnavbar(context),
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButton: backButton(context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/watersmile.png', height: 150),
            createRichButton("assets/watericon.png", "15 litres", () { }),
            createRichButton("assets/clock.png", "20 mins", () { print("clock"); }),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(child: Image.asset("assets/completion.png", height: 100,), padding: EdgeInsets.all(10.0),),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        child: Text("TAP 1: Kitchen", style: buttonTextStyle),
                                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0)
                                    )
                                ),
                                Padding(
                                    child: Text("10 litres of water used", style: TextStyle(
                                      color: mydarkblue,
                                      fontSize: 18,
                                    )),
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
            )
          ],
        )
    );
  }
}
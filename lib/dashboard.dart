import 'package:flutter/material.dart';
import 'package:twig_app/WaterUsageScreen.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

class DashboardScreen extends StatefulWidget{
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}
class _DashboardScreenState extends State<DashboardScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context),
        bottomNavigationBar: mybottomnavbar(context),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/watersmile.png', height: 150),
            createRichButton("assets/watericon.png", "today: XXX litres", () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>(WaterUsageScreen())));
            }),
            createRichButton("assets/graph.png", "track your water usage", () { print("graph"); }),
            createRichButton("assets/quest.png", "complete today's quest", () { print("quest"); })
          ],
        )
    );
  }
}
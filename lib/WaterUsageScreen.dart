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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/watersmile.png', height: 150),
            createRichButton("assets/watericon.png", "XXX litres", () { }),
            createRichButton("assets/clock.png", "XXX mins", () { print("clock"); }),
          ],
        )
    );
  }
}
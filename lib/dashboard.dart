import 'package:flutter/material.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/style.dart';

class DashboardScreen extends StatefulWidget{
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}
class _DashboardScreenState extends State<DashboardScreen>{

  Container createRichButton(String asset_path, void Function() onPressed, String text){
    return Container(
        padding: EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: Row(
            children: [
              Image.asset(asset_path, height: 100,),
              Padding(child: Text(text, style: buttonTextStyle), padding: EdgeInsets.all(10.0))
            ],
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: myappbar(context),
        bottomNavigationBar: mybottomnavbar(context),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/watersmile.png', height: 150,),
            createRichButton("assets/watericon.png", () { print("watericon"); }, "today: XXX litres"),
            createRichButton("assets/graph.png", () { print("graph"); }, "track your water usage"),
            createRichButton("assets/quest.png", () { print("quest"); }, "complete today's quest")
          ],
        )
    );
  }
}
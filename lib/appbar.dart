import 'package:flutter/material.dart';
import 'package:twig_app/mail.dart';
import 'package:twig_app/style.dart';

AppBar myappbar(BuildContext context, {bool invertedColors=false}) {
  return AppBar(
      backgroundColor: (!invertedColors?Colors.white:mydarkblue),
      leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: (!invertedColors?Colors.white:mydarkblue)
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MailScreen()));
          },
          child: Icon(Icons.mail, color: (!invertedColors?mydarkblue:Colors.white))
      ),
      title: Center(child: Text("HOO", style: TextStyle(color: (!invertedColors?mydarkblue:Colors.white)),)),
      actions: [
        Icon(Icons.emoji_events, color: Colors.blue),
      ]
  );
}

BottomNavigationBar mybottomnavbar(BuildContext context, {bool invertedColors=false}){
  return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: mydarkblue,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
            label: "Map",
            icon: Icon(Icons.share_location_outlined)
        ),
        BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(Icons.shop)
        ),
        BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
        )
      ]
  );
}
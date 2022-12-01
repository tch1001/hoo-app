import 'package:flutter/material.dart';

AppBar myappbar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.mail, color: Colors.blue),
      title: Center(child: Text("HOO", style: TextStyle(color: Colors.blue),)),
      actions: [
        Icon(Icons.emoji_events, color: Colors.blue),
      ]
  );
}

BottomNavigationBar mybottomnavbar(BuildContext context){
  return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
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
            icon: Icon(Icons.person)
        )
      ]
  );
}
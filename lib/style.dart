import 'package:flutter/material.dart';

Color mydarkblue = Color.fromARGB(255, 18, 43, 134);
Color buttonColor = Colors.white;
TextStyle buttonTextStyle = TextStyle(
  color: mydarkblue,
  fontSize: 20,
);
TextStyle buttonTextStyleInverted = TextStyle(
  color: Colors.white,
  fontSize: 20,
);
ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: buttonColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    )
);
Container createRichButton(String asset_path, String text, void Function() onPressed){
  return Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: Row(
          children: [
            Padding(child: Image.asset(asset_path, height: 100,), padding: EdgeInsets.all(10.0),),
            Padding(child: Text(text, style: buttonTextStyle), padding: EdgeInsets.all(10.0))
          ],
        ),
      )
  );
}
Widget createLocationBasedUsage(String asset_path, String title, String description){
  return ElevatedButton(
    onPressed: (){},
    style: ElevatedButton.styleFrom(
        backgroundColor: mydarkblue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        )
    ),
    child: Container(
    color: mydarkblue,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(child: Image.asset(asset_path, height: 100,), padding: EdgeInsets.all(10.0),),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      child: Text(title, style: buttonTextStyleInverted),
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0)
                  )
              ),
              Padding(
                  child: Text(description, style: buttonTextStyleInverted),
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0)
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  );
}

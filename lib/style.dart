import 'package:flutter/material.dart';

Color mydarkblue = Color.fromARGB(255, 18, 43, 134);
Color buttonColor = Colors.white;

TextStyle myTextStyle(textColor){
  return TextStyle(
              fontSize: 30,
              color: textColor
            );
}
TextStyle buttonTextStyle = TextStyle(
  color: mydarkblue,
  fontSize: 20,
);
FloatingActionButton backButton(context){
  return FloatingActionButton.extended(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back, color: mydarkblue,),
    label: Text("Back", style: buttonTextStyle,),
    backgroundColor: Colors.white,
  );
}
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
Container createRichText(String text, void Function() onPressed){
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(10.0),
      child: Padding(
          child: Text(text,
              style: myTextStyle(mydarkblue),
              textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.all(10.0)
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

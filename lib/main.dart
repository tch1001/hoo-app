import 'package:flutter/material.dart';
import 'package:twig_app/appbar.dart';
import 'package:twig_app/dashboard.dart';
import 'package:twig_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: mydarkblue
      ),
      home: const MyHomePage(title: 'Hoo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          // Image.asset('assets/homepage.png'),
          Positioned(
              child: Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                appBar: myappbar(context),
                body: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/hoo_device.png'),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hello! Welcome to HOO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: (){
                              print("meow");
                            },
                            style: buttonStyle,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Login", style: buttonTextStyle),
                              height: 50,
                              width: 300,
                              // child: Icon(Icons.add),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: (){
                              print("meow");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                            },
                            style: buttonStyle,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Register", style: buttonTextStyle),
                              height: 50,
                              width: 300,
                            ),
                          ),
                        )
                      ]
                  ),
                ),
                bottomNavigationBar: mybottomnavbar(context),
              )
          )
        ]
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/homepage.png'),
            ElevatedButton(
              onPressed: () {},
              child: Positioned(
                left: -100,
                top: 100,
                child: Container(
                    height: 150,
                    width: 50,
                    child: Icon(Icons.add)),

              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

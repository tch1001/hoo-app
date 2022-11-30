import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hoo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
                backgroundColor: Color.fromARGB(255, 18, 43, 134),
                appBar: AppBar(
                    backgroundColor: Colors.white,
                    leading: Icon(Icons.mail, color: Colors.blue),
                    title: Center(child: Text("HOO", style: TextStyle(color: Colors.blue),)),
                    actions: [
                      Icon(Icons.emoji_events, color: Colors.blue),
                      Icon(Icons.more_horiz, color: Colors.blue)
                    ],
                ),
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
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Login",
                                                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            )),
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
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Register",
                                                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            )),
                              height: 50,
                              width: 300,
                            ),
                          ),
                        )
                      ]
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                    unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.blue,
                    items: const [
                      BottomNavigationBarItem(
                          label: "Home",
                          icon: Icon(Icons.home)
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
                ),
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

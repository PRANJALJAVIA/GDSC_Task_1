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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // primaryColor: Color.fromRGBO(153, 50, 216, 0.81),
        backgroundColor: Color.fromRGBO(153, 50, 216, 0.81),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          children: [
            // Image.asset('assets/images/pranjal.jpeg', width: 1, height: 1,),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 20,
            ),
            SizedBox(width: 100,),
            Text("DSC DDU", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 29.0, left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 0),
                  margin: EdgeInsets.only(right: 80),
                  child: Text('Upcoming Events (2)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black))),
              SizedBox(height: 30,),

              // Image.asset('assets/images/img.png', width: 344, height: 200),
              // SizedBox(height: 30,),
              // Image.asset('assets/images/img.png', width: 344, height: 200),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/img.png', width: 344, height: 200),
                  SizedBox(height: 30,),
                  Image.asset('assets/images/img.png', width: 344, height: 200),
                ],
              ),

              SizedBox(height: 30,),
              Container(
                  padding: EdgeInsets.only(left: 0),
                  margin: EdgeInsets.only(right: 150),
                  child: Text('Past Events (5)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(153, 50, 216, 0.81),
        items: [
          // BottomNavigationBarItem(),
          BottomNavigationBarItem(icon: Image.asset('assets/images/icon1.png', width: 35, height: 35, color: Colors.white,), label: 'Events'),
          BottomNavigationBarItem(icon: Image.asset('assets/images/icon2.png', width: 35, height: 35, color: Colors.white,), label: 'Registered Events',),
          BottomNavigationBarItem(icon: Image.asset('assets/images/icon3.png', width: 35, height: 35, color: Colors.white,), label: 'Members',),
        ],
      ),
    );
  }
}



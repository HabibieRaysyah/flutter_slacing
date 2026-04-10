import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [Icon(Icons.notifications)],
        title: Center(child: Text("GymPro")),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 350, top: 20),
            child: Text(
              "Select Program",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.fitness_center, size: 30),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(color: Colors.black, width: 2),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.bike_scooter, size: 30),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(color: Colors.black, width: 2),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.directions_run_outlined,
                              size: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(color: Colors.black, width: 2),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.heart_broken, size: 30),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(color: Colors.black, width: 2),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.shopping_bag_rounded, size: 30),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(color: Colors.black, width: 2),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ],
      ),
    );
  }
}

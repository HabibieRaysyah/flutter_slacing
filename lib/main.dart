import 'package:flutter/material.dart';
import 'package:hariinii/secondpage.dart';

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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        '/': (context) => MyHomePage(title: "Flutter"),
        '/second': (context) => secondpage(),
      },
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
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 350, top: 20),
            child: Text(
              "Select Program",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/second");
                    },
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
                    child: Icon(Icons.directions_run_outlined, size: 30),
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
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsGeometry.only(top: 7, right: 15, left: 15),
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.fitness_center),
                          title: Text(
                            "Strength Class",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(Icons.timer_outlined),
                              Text("9:35AM - 10:35AM"),
                              Padding(
                                padding: EdgeInsetsGeometry.only(left: 176),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.home_outlined),
                                    Text("Bogor"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Tanggal',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

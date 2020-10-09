import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pomodoro(),
    );
  }
}

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  static int timeinMinutes = 25;
  int timeinSec = timeinMinutes * 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("POMODORO APP"),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu,
          color: Colors.black,
        )
      ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      ),
    );
  }
}

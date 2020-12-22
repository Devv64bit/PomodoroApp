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
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: Center(
        child: new CircularPercentIndicator(
          percent: percent,
          animation: true,
          animateFromLastPercent: true,
          radius: 250.0,
          lineWidth: 20.0,
          progressColor: Colors.green,
          center: Text(
            "$timeinMinutes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 80.0
            ),
          ),

        ),
      ),
    );
  }
}

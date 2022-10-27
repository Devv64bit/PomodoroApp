import 'dart:async';

import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:flutter_sound/flutter_sound.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

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

double percent = 0;
String time = '25.00';
int timeinMinutes = 25;
int timeinSeconds = timeinMinutes * 60;
var duration = const Duration(seconds: 1);
var watch = Stopwatch();

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
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
      body: _buildTomatoTimer(),
    );
  }
}

Widget _buildTomatoTimer() {
  return Center(
      child: Column(children: <Widget>[
    _showTime(),
    Expanded(
      flex: 1,
      child: Icon(
        IcoFontIcons.tomato,
        size: 210.00,
      ),
    ),
    Row(children: <Widget>[
      IconButton(
        icon: Icon(Icons.refresh),
        onPressed: _restart,
        iconSize: 70,
      ),
      IconButton(
        icon: _isPlaying() ? Icon(Icons.pause) : Icon(Icons.play_arrow),
        onPressed: _startStopWatch,
        iconSize: 70,
      ),
    ])
  ]));
}

Widget _showTime() {
  return Center(
    child: Text(
      "$time",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 80.0),
    ),
  );
}

void _startStopWatch() {
  if (_isPlaying()) {
    watch.stop();
  } else {
    watch.start();
    _startTimer();
  }
}

void _startTimer() {
  Timer(duration, _keepTimerGoing);
}

bool _isPlaying() {
  return watch.isRunning;
}

void _keepTimerGoing() {
  if (watch.isRunning) {
    _startTimer();
  }
}

void _restart() {
  watch.stop();
  watch.reset();
}

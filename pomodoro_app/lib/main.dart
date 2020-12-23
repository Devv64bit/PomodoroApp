import 'package:flutter/material.dart';
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

/*
 Declare variables here
*/

double percent = 0;
String time = '25.00';
int timeinMinutes = 25;
int timeinSec = timeinMinutes * 60;

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
    child: Column(
    children: <Widget>[
      _timeShow(),
      Expanded(
        flex: 1,
        child: Icon(
          IcoFontIcons.tomato,
          size: 200.00,
        ),
      ),
    ]
  )
  );
}

Widget _timeShow()
{
  return Center(
    child: Text(
      "$time",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 80.0
      ),
    ),
  );
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colorGroup = [Colors.red, Colors.green, Colors.blue];
  Color iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline,
              size: 100,
              color: iconColor,
            ),
            Container(
              width: 140,
              child: Row(
                children: [
                  Radio(
                      value: colorGroup[0],
                      groupValue: iconColor,
                      onChanged: (val) {
                        iconColor = val;

                        setState(() {});
                      }),
                  Text("Red"),
                ],
              ),
            ),
            Container(
              width: 140,
              child: Row(
                children: [
                  Radio(
                      value: colorGroup[1],
                      groupValue: iconColor,
                      onChanged: (val) {
                        iconColor = val;

                        setState(() {});
                      }),
                  Text("Green"),
                ],
              ),
            ),
            Container(
              width: 140,
              child: Row(
                children: [
                  Radio(
                      value: Colors.blue,
                      groupValue: iconColor,
                      onChanged: (val) {
                        iconColor = val;

                        setState(() {});
                      }),
                  Text("Blue"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {

  Color colorCode = Colors.white38;
  final Random random = Random();

  getRandomColor() {
    Color randColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = randColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          getRandomColor();
        },
        child: Scaffold(
          backgroundColor: colorCode,
          appBar: AppBar(title: Text('For Solid Software'), backgroundColor: Colors.black12, centerTitle: true,),
          body: Align(
            child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.blue),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Hey ",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 32,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 1.0,
                                color: Colors.red,
                              ),
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 1.0,
                                color: Colors.deepPurpleAccent,
                              ),
                            ])),
                    TextSpan(
                        text: "there",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 32,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Colors.deepPurpleAccent,
                              ),
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Colors.red,
                              ),
                            ]))
                  ]),
            ),
            alignment: Alignment.center,
          ),
        ));
  }
}

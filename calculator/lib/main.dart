import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Color coolorr;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 102, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calculator'.toUpperCase(),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            BuildSizedBox(
              height: 25,
            ),
            Container(
              width: 600,
              decoration: BoxDecoration(
                color: Color.fromRGBO(241, 241, 241, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  TextField(
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 30,
                        letterSpacing: 1,
                        color: Colors.black,
                      ),
                    ),
                    // autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusColor: Colors.blue),
                  ),
                  BuildSizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '5',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildSizedBox extends StatelessWidget {
  final height;
  final width;
  BuildSizedBox({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

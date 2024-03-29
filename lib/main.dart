// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color.fromARGB(136, 6, 4, 2)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.bottomRight
                  ),
              ),
              alignment: Alignment.bottomLeft,
              width: 100.0,
              height: 100.0,
              child: Container(
                // color: Colors.red,
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('lib/img/logo.png'))),
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/img/background.jpg'),
                    fit: BoxFit.cover)),
          ),
        ));
  }
}

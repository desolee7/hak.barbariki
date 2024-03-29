// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            flexibleSpace: Container(              //проверка коммита
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
                    image: AssetImage('lib/img/background.png'),
                    fit: BoxFit.cover)),
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors
// тут была Аня
import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyApp extends StatelessWidget {
  List<String> items = ['Скульптура', 'Живопись'];
  String? selectedItem = 'Скульптура';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            alignment: Alignment.bottomLeft,
            width: 100.0,
            height: 100.0,
            child: Container(
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
          padding: EdgeInsets.only(top: 100.0),
          margin: const EdgeInsets.symmetric(
              // horizontal: 20.0,
              ),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Загрузить   ",
                    style: TextStyle(
                        fontSize: 68.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.50),
                        fontFamily: "Montserrat"),
                  ),
                  Row(
                    children: [
                      Text(
                        "фото",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 0.80),
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(width: 15),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.download, color: Colors.white70,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(143, 124, 112, 1),
                          shadowColor: Color(0xff000000)
                        )),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(143, 124, 112, 1),
                      shadowColor: Color(0xff000000),
                    ),
                    icon: const Icon(Icons.search_sharp, color: Colors.white70,),
                    label: Text(
                      "Поиск предметов",
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color(0xffffffff),
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                  // Spacer(flex: 1),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 160.0,
                        height: 125.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.50)),
                          color: Color.fromRGBO(0, 0, 0, 0.50),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 160.0,
                        height: 125.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.50)),
                          color: Color.fromRGBO(0, 0, 0, 0.50),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          Flexible(child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10, height: 40),
                  Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 124, 112, 1),
                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.2)),
                  borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: DropdownButton(
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Color(0xffffffff),
                    fontFamily: "Montserrat",
                    // fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.white70,),
                  dropdownColor: Color.fromRGBO(143, 124, 112, 1),
                  elevation: 2,
                  underline: SizedBox(),
                  items: items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
                  value: selectedItem,
                  onChanged: (item) => setState(() => selectedItem = item),
                ),),
                SizedBox(width: 350, height: 28),
                SizedBox(width: 350, height: 300,
                    child: TextField(
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                        decoration: InputDecoration(
                            hintText: "Начните вводить описание...",
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white70,
                              fontFamily: "Montserrat",
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                            fillColor: Color.fromRGBO(0, 0, 0, 0.50),
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
                            ))),
                ],
              ),),
            ]
         ),
        ),
      ),
    );
  }
}

@protected
void setState(VoidCallback fn) {
  fn();
}

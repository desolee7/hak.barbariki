// ignore_for_file: prefer_const_constructors
// тут была Аня
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyApp extends StatelessWidget {
  List<String> items = ['One', 'Two', 'Three', 'Four'];
  String? selectedItem = 'One';

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
          padding: EdgeInsets.only(top: 100.0),
          margin: const EdgeInsets.symmetric(
              // horizontal: 20.0,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Загрузить",
                    style: TextStyle(
                        fontSize: 68.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.italic),
                  ),
                  Row(
                    children: [
                      Text(
                        "фото",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(width: 5),
                      Image.asset(
                        "lib/img/download_icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(143, 124, 112, 1),
                      shadowColor: Color(0xff000000),
                    ),
                    child: Text(
                      "Поиск предметов",
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color(0xffffffff),
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                  // Spacer(flex: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                              bottom: BorderSide()),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                              bottom: BorderSide()),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(143, 124, 112, 1),
                      border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.2)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButton(
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xffffffff),
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                      dropdownColor: Color.fromRGBO(143, 124, 112, 1),
                      elevation: 2,
                      underline: SizedBox(),
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      value: selectedItem,
                      onChanged: (item) => setState(() => selectedItem = item),
                    ),
                  ),
                  // SizedBox( height: 10.0),
                  // TextField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     labelText: 'Password',
                  //   ),
                  // )
                ],
              ),
            ],
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

// ignore_for_file: prefer_const_constructors
// тут была Аня
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
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
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/img/background.png'),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.only(top: 100.0),
          margin: const EdgeInsets.symmetric(horizontal: 20.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Загрузить", style: TextStyle(
                      fontSize: 68.0,
                      fontWeight: FontWeight.bold,
                      // color: Color(0x72000000),
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.italic
                  ),),
                  Text("фото", style: TextStyle(fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Color(0xff000000),
                      fontFamily: "Montserrat",
                  ),),
                  ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.brown.shade300,
                        backgroundColor: Color.fromRGBO(143, 124, 112, 1),
                        shadowColor: Color(0xff000000),
                      ),
                    child: const Text("Поиск предметов", style: TextStyle(
                        fontSize: 32.0,
                        color: Color(0xffffffff),
                        fontFamily: "Montserrat",
                    ),
                  )
                  )
                ],
              ),
              Column(
                children: [
                  DropdownButton(items: items.map((item) =>
                      DropdownMenuItem(child: Text(item), value: item)).toList(),
                    value: selectedItem,
                    onChanged: (item) => setState(() => selectedItem = item),
                      ),
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


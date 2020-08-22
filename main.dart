import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoState();
  }
}

class DemoState extends State<Demo> {
  List<String> list = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: list.map((String value) {
          return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2020/03/09/14/54/seychelles-4916045_960_720.jpg'));
        }).toList(),
      ),
    );
  }
}

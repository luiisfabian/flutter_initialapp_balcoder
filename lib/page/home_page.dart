import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/utils/widget/custom_container.dart';

class HomePage extends StatefulWidget {
  HomePage({this.name});

  final String name;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  incrementsCount() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
          child: CustomContainer(
        title: "Precionando",
        count: count,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            incrementsCount();
          });
        },
        child: Icon(Icons.person_pin),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/page/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(name: 'hola mundo')
    );
  }
}
import 'package:flutter/material.dart';
import 'increment.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Demo',
      theme: ThemeData( 
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Select Service'),     
    );
  }
}


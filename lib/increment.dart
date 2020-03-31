
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search), 
                onPressed: () {},            
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 5,
                      ),
                    ),
                    Text(
                      'clothes',
                    ),
                    Expanded(
                      child: Container(
                        height: 5,                      
                      ),
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _incrementCounter,                     
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

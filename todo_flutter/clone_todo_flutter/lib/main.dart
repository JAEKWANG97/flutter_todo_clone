import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.check_circle,
            ),
            title: Text('All Lists'),
            actions: [
              Icon(
                Icons.search,
              ),
              Icon(
                Icons.more_vert,
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              )
            ],
          )),
    );
  }
}

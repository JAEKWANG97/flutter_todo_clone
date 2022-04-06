import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 월드',
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List-View'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Column(children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text('data 1'),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text('data 2'),
                  )
                ],
              )
            ]),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('data A')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: const Center(child: Text('data B')),
                ),
                Container(
                  height: 50,
                  color: Colors.green[600],
                  child: const Center(child: Text('data C')),
                ),
                Container(
                  height: 50,
                  color: Colors.red[600],
                  child: const Center(child: Text('data D')),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: const Center(child: Text('data E')),
                ),
              ],
            ),
          ],
        ));
  }
}

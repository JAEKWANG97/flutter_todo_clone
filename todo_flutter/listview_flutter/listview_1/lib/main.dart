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
    final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];
    final List<String> name = <String>[
      'Day1',
      'Day2',
      'Day3',
      'Day4',
      'Day5',
      'Day6',
      'Day7'
    ];
    final List<String> todo = <String>[
      'ToDo1',
      'ToDo2',
      'ToDo3',
      'ToDo4',
      'ToDo5',
      'ToDo6',
      'ToDo7'
    ];
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
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        color: Colors.amber[colorCodes[index]],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.date_range,
                                ),
                                Text(
                                  name[index],
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Text(
                              todo[index],
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  // children: [
                  //   Container(
                  //     height: 50,
                  //     color: Colors.amber[600],
                  //     child: const Center(child: Text('data A')),
                  //   ),
                  //   Container(
                  //     height: 50,
                  //     color: Colors.blue[600],
                  //     child: const Center(child: Text('data B')),
                  //   ),
                  //   Container(
                  //     height: 50,
                  //     color: Colors.green[600],
                  //     child: const Center(child: Text('data C')),
                  //   ),
                  //   Container(
                  //     height: 50,
                  //     color: Colors.red[600],
                  //     child: const Center(child: Text('data D')),
                  //   ),
                  //   Container(
                  //     height: 50,
                  //     color: Colors.white,
                  //     child: const Center(child: Text('data E')),
                  //   ),
                  // ],
                ),
              ],
            ),
          ],
        ));
  }
}

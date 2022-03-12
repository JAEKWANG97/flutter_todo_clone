import 'package:flutter/material.dart';

import 'add_memo.dart';
import 'memo.dart';

class MyMemo with ChangeNotifier {
  List<Memo> memos;

  Mymemo() {
    memos = List();
  }

  void addMemo(Memo memo) {
    this.memos.add(memo);
    notifyListeners();
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memo'),
      ),
      body: SizedBox.expand(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return AddMemo();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

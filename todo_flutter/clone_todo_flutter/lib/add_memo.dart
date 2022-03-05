import 'package:flutter/material.dart';

import 'memo.dart';

class AddMemo extends StatefulWidget {
  @override
  _AddMemoState createState() => _AddMemoState();
}

class _AddMemoState extends State<AddMemo> {
  String title = '';
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Memo'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Memo(
                title: this.title,
                content: this.content,
                dateCreated: DateTime.now(),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                title = value;
              },
              decoration: InputDecoration(
                hintText: '제목',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              maxLines: null,
              onChanged: (value) {
                content = value;
              },
              decoration: InputDecoration(
                hintText: '내용',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

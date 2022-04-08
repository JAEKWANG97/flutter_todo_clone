import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getxManagement.dart';

void main() {
  runApp(const FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First page'),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            Get.to(SecondPage());
          },
        )),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  final flag = Get.put(StateOfFlag());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: flag.appBarState.value == false
            ? AppBar(
                title: Text('False'),
                backgroundColor: Colors.amber,
              )
            : AppBar(
                title: Text('True'),
                backgroundColor: Colors.black,
              ),
        body: Container(
          color:
              flag.bodyState.value == false ? Colors.lightBlue : Colors.green,
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  child: Text('Get back to the First page'),
                  onPressed: () {
                    Get.back();
                  },
                ),
                ElevatedButton(
                  child: Text('Change the AppBar Color'),
                  onPressed: () {
                    flag.appBarState.value = !flag.appBarState.value;
                  },
                ),
                ElevatedButton(
                  child: Text('Change the Body Color'),
                  onPressed: () {
                    flag.bodyState.value = !flag.bodyState.value;
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

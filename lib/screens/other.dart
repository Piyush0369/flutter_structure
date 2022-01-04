import 'package:flutter/material.dart';
import 'package:flutter_structure/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  "Scren was clicked ${counterController.counter.value} times")),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Open Other Screen")),
          )
        ],
      ),
    );
  }
}

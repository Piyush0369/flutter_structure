import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/controllers/counterController.dart';
import 'package:flutter_structure/screens/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Clicks : ${counterController.counter.value}")),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen());
                    },
                    child: Text("Open Other Screen")),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(CupertinoIcons.add_circled_solid),
        ));
  }
}

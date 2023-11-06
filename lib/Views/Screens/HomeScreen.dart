import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/Controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var c1 = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(
          onPressed: () {
            c1.increament();
          },
          child: Icon(Icons.plus_one_outlined),
        ),
        FloatingActionButton(
          onPressed: () {
            c1.decreament();
          },
          child: Icon(Icons.exposure_minus_1_outlined),
        )
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${c1.countermodel.Count}",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/countController.dart';
import 'package:getx_app/controller/userController.dart';
import 'second.dart';

class ScreenOne extends StatelessWidget {
  // final CountController controller = Get.put(CountController()); initialize it on GetBuilder (1)
  @override
  Widget build(BuildContext context) {
    print('class rebuild');
    return Scaffold(
      //key: controller.scfKey, (1)
      appBar: AppBar(
        title: Text('Flutter Getx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<CountController>(
              init: CountController(),
              builder: (c) {
                //print("rebuild");
                return Text('Count is ${c.count}');
              },
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (c) {
                // print('GETX rebuild');
                return Text('UserCount is ${c.user.value.count}');
              },
            ),
            Obx(() {
              // print('OBX rebuild');
              return Text(
                  'Name : ${Get.find<UserController>().user.value.username}');
            }),
            RaisedButton(
              onPressed: () {
                Get.find<UserController>()
                    .updateUI(Get.find<CountController>().count);
              },
              child: Text('Update Name && Count'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(SecondScreen());
              },
              child: Text('Next Screen'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  controller.updateCount(); (1)
          Get.find<CountController>().updateCount();
        },
        child: Icon(Icons.plus_one),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}

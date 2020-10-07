import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/emailController.dart';

class SecondScreen extends StatelessWidget {
  final EmailController controller = Get.put(EmailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Validation GETX'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<EmailController>(
            builder: (e) {
              return TextField(
                onChanged: (String email) {
                  controller.changingInEmail(email);
                },
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: controller.emails.value.color,
                    ),
                  ),
                ),
              );
            },
          ),
          Obx(() {
            return RaisedButton(
              onPressed: controller.emails.value.ok == true
                  ? () {
                      Get.back();
                      controller.emails.value.ok = false;
                    }
                  : null,
              child: Text('back'),
            );
          })
        ],
      )),
    );
  }
}

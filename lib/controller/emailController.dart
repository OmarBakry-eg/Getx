import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/model/email.dart';

class EmailController extends GetxController {
  final Rx<EmailValid> emails = EmailValid().obs;
  changingInEmail(String email) {
    if (!email.contains('@')) {
      emails.update((val) {
        val.color = Colors.red;
        val.ok = false;
      });
    } else {
      emails.update((val) {
        val.color = Colors.green;
        val.ok = true;
      });
      Get.snackbar('Done !', 'Navigate back now');
    }
    // print(emails.value.ok);
  }
}

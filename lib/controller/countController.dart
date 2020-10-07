import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;

  void updateCount(/* context (1) */) {
    if (count != 11) {
      count++;
    } else {
      Get.snackbar(
        'Count Over',
        'Count can\'t be more than 11',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    update();
  }
}

// GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); (1)
// GlobalKey<ScaffoldState> get scfKey => _scaffoldKey; (1)

// _scaffoldKey.currentState.showSnackBar(SnackBar(
//   content: Text('Count can\'t be more than 11'),
// )); (1)

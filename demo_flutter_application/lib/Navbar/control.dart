import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Control extends GetxController {
  var index = 0;
  void changeIndex(int newIndex) {
    index = newIndex;
    update();
  }
}

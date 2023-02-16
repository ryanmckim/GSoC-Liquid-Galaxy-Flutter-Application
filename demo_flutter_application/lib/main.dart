import 'package:demo_flutter_application/Navbar/destination.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      initialRoute: Destination.getNavbar(),
      getPages: Destination.destination));
}

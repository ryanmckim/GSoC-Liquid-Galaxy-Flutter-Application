import 'package:demo_flutter_application/home.dart';
import 'package:demo_flutter_application/lg.dart';
import 'package:demo_flutter_application/video.dart';
import 'package:demo_flutter_application/about.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'control.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final control = Get.put(Control());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Control>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: control.index,
          children: const [Home(), LiquidGalaxy(), Video(), About()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade300,
          currentIndex: control.index,
          onTap: control.changeIndex,
          items: [
            _NavIcons(IconlyBold.home, "Home"),
            _NavIcons(IconlyBold.star, "Liquid Galaxy"),
            _NavIcons(IconlyBold.video, "Videos"),
            _NavIcons(IconlyBold.profile, "About Me")
          ],
        ),
      );
    });
  }
}

_NavIcons(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}

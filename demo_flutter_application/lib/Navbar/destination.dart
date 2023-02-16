import 'package:demo_flutter_application/Navbar/navbar.dart';
import 'package:demo_flutter_application/home.dart';
import 'package:demo_flutter_application/lg.dart';
import 'package:demo_flutter_application/video.dart';
import 'package:demo_flutter_application/about.dart';
import 'package:get/get.dart';

class Destination {
  static String navbar = '/';
  static String home = '/home';
  static String lg = '/lg';
  static String video = '/video';
  static String about = '/about';

  static getNavbar() => navbar;
  static getHome() => home;
  static getLG() => lg;
  static getVideo() => video;
  static getAbout() => about;

  static List<GetPage> destination = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: navbar, page: () => const Home()),
    GetPage(name: navbar, page: () => const LiquidGalaxy()),
    GetPage(name: navbar, page: () => const Video()),
    GetPage(name: navbar, page: () => const About())
  ];
}

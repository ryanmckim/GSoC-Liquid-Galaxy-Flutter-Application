import 'package:flutter/material.dart';
import 'package:flutter_earth/flutter_earth.dart';

class LiquidGalaxy extends StatefulWidget {
  const LiquidGalaxy({super.key});

  @override
  State<LiquidGalaxy> createState() => _LiquidGalaxyState();
}

class _LiquidGalaxyState extends State<LiquidGalaxy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("GSoC Liquid Galaxy Videos")),
      body: Center(
          child: FlutterEarth(
              url: 'http://mt0.google.com/vt/lyrs=y&hl=en&x={x}&y={y}&z={z}',
              radius: 180)),
    );
  }
}

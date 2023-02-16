import 'package:flutter/material.dart';

class LiquidGalaxy extends StatefulWidget {
  const LiquidGalaxy({super.key});

  @override
  State<LiquidGalaxy> createState() => _LiquidGalaxyState();
}

class _LiquidGalaxyState extends State<LiquidGalaxy> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("lg")),
    );
  }
}

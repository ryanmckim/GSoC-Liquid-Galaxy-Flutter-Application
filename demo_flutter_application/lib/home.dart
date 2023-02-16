import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GSoC Liquid Galaxy"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset('images/LG_logo.png'),
            const SizedBox(height: 50),
            Image.asset('images/GSoC_logo.png')
          ],
        ));
  }
}

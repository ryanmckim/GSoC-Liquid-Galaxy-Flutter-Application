import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GSoC Liquid Galaxy',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const MyHomePage(title: 'Liquid Galaxy Flutter Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Image.asset('images/LG_logo.png'),
          const SizedBox(height: 50),
          Image.asset('images/GSoC_logo.png')
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.star), label: "LG"),
        NavigationDestination(
            icon: Icon(Icons.contact_page_rounded), label: "About Me")
      ]),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PoppinUp!',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'PoppinUp!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("../assets/images/watermark.png"), fit: BoxFit.none,),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("../assets/images/watermark.png"), fit: BoxFit.none,),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.redAccent,
        items: const [
          TabItem(icon: Icons.location_pin, title: 'Location'),
          TabItem(icon: Icons.bubble_chart, title: 'Intrests'),
          TabItem(icon: Icons.calendar_month, title: 'Events'),
          TabItem(icon: Icons.keyboard_arrow_up_rounded, title: 'Favorites'),
        ],
        initialActiveIndex: 2,
        onTap: (int i) => print('click index=$i'),
      ),
    );

  }
}

import 'package:dynamic_screen/dynamic_screen_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ScreenBuilder(
            mobileChild: Center(child: Text("Mobile Screen")),
            tabletChild: Center(child: Text("Tablet Screen")),
            desktopChild: Center(child: Text("Desktop Screen"))),
      ),
    );
  }
}

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
  // This widget is the root of your application.
  int counter = 0;
  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color(0x0ff4eddb),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'click',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '$counter',
              style: const TextStyle(color: Colors.white),
            ),
            IconButton(
              iconSize: 40,
              color: Colors.white,
              onPressed: onClicked,
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        )),
      ),
    );
  }
}

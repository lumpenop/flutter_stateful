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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        color: Colors.red,
      ))),
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color(0x0ff4eddb),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LargeTitle(),
          ],
        )),
      ),
    );
  }
}

class LargeTitle extends StatelessWidget {
  const LargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Large Title',
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}

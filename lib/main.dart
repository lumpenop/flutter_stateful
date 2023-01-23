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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

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
        backgroundColor: const Color.fromARGB(178, 233, 220, 189),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const LargeTitle() : const Text('nothing'),
            IconButton(
                onPressed: toggleTitle, icon: const Icon(Icons.remove_red_eye))
          ],
        )),
      ),
    );
  }
}

class LargeTitle extends StatefulWidget {
  const LargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<LargeTitle> createState() => _LargeTitleState();
}

class _LargeTitleState extends State<LargeTitle> {
  @override
  void initState() {
    // TODO: implement initState

    print('initState');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'Large Title',
      style: TextStyle(
          color: Theme.of(context).textTheme.titleLarge!.color, fontSize: 30),
    );
  }
}

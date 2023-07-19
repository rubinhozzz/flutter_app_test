import 'package:flutter/material.dart';
import 'package:flutter_app_test/pages/another_screen.dart';
import 'package:flutter_app_test/widgets/keyboard_listener_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        body: KeyboardListenerScreen(
            child: Center(
          child: ElevatedButton(
              child: Text('Go to ANOTHER SCREEN'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnotherScreen(title: 'ANOTHER SCREEN'),
                  ),
                );
              }),
        )));
  }

  void process(key) {
    print(key);
    print('This is the callback I want to for HOME SCREEN!!!!');
  }
}

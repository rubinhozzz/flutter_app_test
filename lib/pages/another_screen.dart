import 'package:flutter/material.dart';
import 'package:flutter_app_test/main.dart';
import '../widgets/keyboard_listener_screen.dart';

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({super.key, required this.title});

  final String title;

  @override
  State<AnotherScreen> createState() => _AnotherScreen();
}

class _AnotherScreen extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: KeyboardListenerScreen(
            callback: process,
            child: Center(
              child: ElevatedButton(
                  child: Text('Go to HOME SCREEN'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'Home Page'),
                      ),
                    );
                  }),
            )));
  }

  void process(key) {
    print(key);
    print('This is ANOTHER SCREEN!!!');
  }
}

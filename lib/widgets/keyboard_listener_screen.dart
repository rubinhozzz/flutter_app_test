import 'package:flutter/material.dart';

class KeyboardListenerScreen extends StatelessWidget {
  Widget child;
  Function? callback;

  KeyboardListenerScreen({super.key, required this.child, this.callback});

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
        autofocus: true,
        focusNode: FocusNode(),
        child: child,
        onKeyEvent: (event) {
          final key = event.logicalKey;
          callback!(key);
        });
  }
}

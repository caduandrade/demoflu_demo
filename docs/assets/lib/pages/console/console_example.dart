import 'package:flutter/material.dart';

class ConsoleExample extends StatelessWidget {
  const ConsoleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.all(16),
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  print('Hi!');
                },
                child: const Text('Print'))));
  }
}

import 'package:flutter/material.dart';

class ListenableExample extends StatelessWidget {
  const ListenableExample(this.count, {super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.all(16),
        child: Center(child: Text('Count: $count')));
  }
}

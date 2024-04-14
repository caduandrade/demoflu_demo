import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/listenable/listenable_example.dart';
import 'package:flutter/material.dart';

class ListenablePage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'Example of a listenable value to rebuild the widget.');

    widget((context) => _incrementButton);

    widget((context) => ListenableExample(_count.value),
        listenable: _count, title: 'Widget', maxWidth: 200);

    code('lib/pages/listenable/listenable_example.dart',
        title: 'Widget source code');

    code('lib/pages/listenable/listenable_page.dart',
        title: 'The source code of this page');
  }

  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  Widget get _incrementButton => ElevatedButton(
      child: const Text('Increment the count'),
      onPressed: () => _count.value++);
}

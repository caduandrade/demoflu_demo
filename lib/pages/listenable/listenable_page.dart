import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/listenable/listenable_example.dart';
import 'package:flutter/material.dart';

class ListenablePage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(text: 'Example of a listenable value to rebuild the widget.');

    sections.widget((context) => _incrementButton);

    sections.widget((context) => ListenableExample(_count.value),
        listenable: _count, title: 'Widget', maxWidth: 200);

    sections.code('lib/pages/listenable/listenable_example.dart',
        title: 'Widget source code');

    sections.code('lib/pages/listenable/listenable_page.dart',
        title: 'The source code of this page');

    return sections;
  }

  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  Widget get _incrementButton => ElevatedButton(
      child: const Text('Increment the count'),
      onPressed: () => _count.value++);
}

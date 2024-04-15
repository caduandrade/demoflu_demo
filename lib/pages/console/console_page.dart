import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/console/console_example.dart';
import 'package:flutter/widgets.dart';

class ConsolePage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'It is possible to capture console output.');

    widget((context) => const ConsoleExample(), title: 'Widget', maxWidth: 200);

    console();

    code('lib/pages/console/console_example.dart', title: 'Widget source code');

    code('lib/pages/console/console_page.dart',
        title: 'The source code of this page');
  }
}
import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/stateful/stateful_example.dart';
import 'package:flutter/widgets.dart';

class StatefulPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    code('lib/pages/stateful/stateful_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'widget');

    //@demoflu_start:widget
    widget((context) => const StatefulExample(),
        title: 'Example of a Stateful widget', maxWidth: 500);
    //@demoflu_end:widget

    code('lib/pages/stateful/stateful_example.dart',
        title: 'Widget source code');
  }
}

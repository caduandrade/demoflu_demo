import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/stateless/stateless_example.dart';
import 'package:flutter/widgets.dart';

class StatelessPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    code('lib/pages/stateless/stateless_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'widget');

    //@demoflu_start:widget
    widget((context) => const StatelessExample(),
        title: 'Example of a Stateless widget', maxWidth: 500);
    //@demoflu_end:widget

    code('lib/pages/stateless/stateless_example.dart',
        title: 'Widget source code');
  }
}

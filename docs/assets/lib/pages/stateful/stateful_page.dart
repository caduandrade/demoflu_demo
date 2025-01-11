import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/stateful/stateful_example.dart';
import 'package:flutter/widgets.dart';

class StatefulPage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.code('lib/pages/stateful/stateful_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'widget');

    //@demoflu_start:widget
    sections.widget((context) => const StatefulExample(),
        title: 'Example of a Stateful widget', maxWidth: 500);
    //@demoflu_end:widget

    sections.code('lib/pages/stateful/stateful_example.dart',
        title: 'Widget source code');
  }
}

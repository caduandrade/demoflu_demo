import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/stateful/stateful_example.dart';
import 'package:flutter/widgets.dart';

class StatefulPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.code('lib/pages/stateful/stateful_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'widget');

    //@demoflu_start:widget
    sections.widget((context) => const StatefulExample(),
        title: 'Example of a Stateful widget', maxWidth: 500);
    //@demoflu_end:widget

    sections.code('lib/pages/stateful/stateful_example.dart',
        title: 'Widget source code');

    return sections;
  }
}

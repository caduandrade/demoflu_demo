import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/console/console_example.dart';
import 'package:flutter/widgets.dart';

class ConsolePage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(text: 'It is possible to capture console output.');

    sections.widget((context) => const ConsoleExample(),
        title: 'Widget', maxWidth: 200);

    sections.console();

    sections.code('lib/pages/console/console_example.dart',
        title: 'Widget source code');

    sections.code('lib/pages/console/console_page.dart',
        title: 'The source code of this page');

    return sections;
  }
}

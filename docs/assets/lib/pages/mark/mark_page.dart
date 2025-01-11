import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class MarkPage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.text(text: 'You can mark code segments with special comments.');

    sections.text()
      ..add('The start of a segment is indicated by "@demoflu_start:name",')
      ..add(' and the end by "@demoflu_end:name", where "name" is a')
      ..add(' specific identifier for the segment.');

    sections.text()
      ..add(' You can then choose to display the entire source code,')
      ..add('  ignore the marked segments, or exclusively show them.');

    sections.code('lib/pages/mark/mark_example.dart',
        title: 'Full source code');

    sections.heading('Ignoring marked code');

    sections.code('lib/pages/mark/mark_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'ignoreMarked');

    //@demoflu_start:ignoreMarked
    sections.code('lib/pages/mark/mark_example.dart',
        title: 'Source code without the ignored segment',
        loadMode: LoadMode.ignoreMarked,
        mark: 'ignore');
    //@demoflu_end:ignoreMarked

    sections.heading('Showing only the marked code');

    sections.code('lib/pages/mark/mark_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'onlyMarked');

    //@demoflu_start:onlyMarked
    sections.code('lib/pages/mark/mark_example.dart',
        title: 'Only the marked segment',
        loadMode: LoadMode.readOnlyMarked,
        mark: 'show');
    //@demoflu_end:onlyMarked
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class MarkPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'You can mark code segments with special comments.');

    text()
      ..add('The start of a segment is indicated by "@demoflu_start:name",')
      ..add(' and the end by "@demoflu_end:name", where "name" is a')
      ..add(' specific identifier for the segment.');

    text()
      ..add(' You can then choose to display the entire source code,')
      ..add('  ignore the marked segments, or exclusively show them.');

    code('lib/pages/mark/mark_example.dart', title: 'Full source code');

    heading('Ignoring marked code');

    code('lib/pages/mark/mark_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'ignoreMarked');

    //@demoflu_start:ignoreMarked
    code('lib/pages/mark/mark_example.dart',
        title: 'Source code without the ignored segment',
        loadMode: LoadMode.ignoreMarked,
        mark: 'ignore');
    //@demoflu_end:ignoreMarked

    heading('Showing only the marked code');

    code('lib/pages/mark/mark_page.dart',
        loadMode: LoadMode.readOnlyMarked, mark: 'onlyMarked');

    //@demoflu_start:onlyMarked
    code('lib/pages/mark/mark_example.dart',
        title: 'Only the marked segment',
        loadMode: LoadMode.readOnlyMarked,
        mark: 'show');
    //@demoflu_end:onlyMarked
  }
}

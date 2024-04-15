import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class MacrosPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text()
      ..add('Macros enable the automation of creating and configuring sections')
      ..add(' by defining reusable sequences of instructions or actions.');

    code('lib/pages/macros/main_example.dart',
        title: 'Creating the macro in main',
        mark: 'show',
        loadMode: LoadMode.readOnlyMarked);

    code('lib/pages/macros/macros_page.dart',
        title: 'Running the macro in the section',
        mark: 'show',
        loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:show
    group()
      ..runMacro(id: 'myMacro', context: context)
      ..text(text: 'This is a section added after the macro runs.');
    //@demoflu_end:show
  }
}
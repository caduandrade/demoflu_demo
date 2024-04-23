import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class BulletsPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text()
      ..add('Configure each bullet individually by adjusting')
      ..add(' its indentation.');

    //@demoflu_start:code
    bulletsSection()
      ..create(text: 'This is a bullet.')
      ..create(text: 'This is an indenting bullet', indent: 1);
    //@demoflu_end:code

    code('lib/pages/bullets/bullets_page.dart',
        mark: 'code', loadMode: LoadMode.readOnlyMarked);
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class BorderPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'All styled sections can have borders.');

    heading('Solid');

    code('lib/pages/border/border_page.dart',
        mark: 'solid', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:solid
    text(text: 'This is a solid border.')
      ..padding = const EdgeInsets.all(8)
      ..solidBorder(color: Colors.blue);
    //@demoflu_end:solid

    heading('Arrow');

    code('lib/pages/border/border_page.dart',
        mark: 'arrow', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:arrow
    text(text: 'This is an arrow border.')
      ..padding = const EdgeInsets.all(8)
      ..arrowDownBorder();
    //@demoflu_end:arrow

    heading('Bullet');

    code('lib/pages/border/border_page.dart',
        mark: 'bullet', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:bullet
    text(text: 'This is a bullet border.')
      ..padding = const EdgeInsets.all(8)
      ..bulletBorder(color: Colors.grey);
    //@demoflu_end:bullet

    heading('Bullet with icon');

    code('lib/pages/border/border_page.dart',
        mark: 'bullet_icon', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:bullet_icon
    text(text: 'This is a bullet border with icon.')
      ..padding = const EdgeInsets.fromLTRB(8, 24, 8, 8)
      ..bulletBorder(
          icon: Icons.person,
          iconColor: Colors.white,
          color: Colors.blue[800]!,
          thickness: 4,
          diameter: 28,
          iconWeight: .7);
    //@demoflu_end:bullet_icon
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class GroupPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(
        text:
            'It is a collection of related sections grouped together for organizational purposes.');

    code('lib/pages/group/group_page.dart',
        mark: 'group', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:group
    group()
      ..padding = const EdgeInsets.all(8)
      ..marginLeft = 32
      ..bulletBorder(color: Colors.grey)
      ..text(text: 'This section is in the group.')
      ..banner(text: 'This section also in the group.');
    //@demoflu_end:group
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class GroupPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(
        text:
            'It is a collection of related sections grouped together for organizational purposes.');

    sections.code('lib/pages/group/group_page.dart',
        mark: 'group', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:group
    sections.group()
      ..padding = const EdgeInsets.all(8)
      ..marginLeft = 32
      ..bulletBorder(color: Colors.grey)
      ..text(text: 'This section is in the group.')
      ..banner(text: 'This section also in the group.');
    //@demoflu_end:group

    return sections;
  }
}

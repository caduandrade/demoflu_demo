import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class MyPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.code('lib/pages/my_widget_example.dart',
        title: 'How to use MyWidget');

    return sections;
  }
}

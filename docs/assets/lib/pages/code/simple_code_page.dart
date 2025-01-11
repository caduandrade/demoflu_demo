import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class MyPage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.code('lib/pages/my_widget_example.dart',
        title: 'How to use MyWidget');
  }
}

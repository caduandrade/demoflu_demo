import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/not_resizable/not_resizable_example.dart';
import 'package:flutter/widgets.dart';

class NotResizablePage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.widget((context) => const NotResizableExample());

    sections.code('lib/pages/not_resizable/not_resizable_example.dart');

    return sections;
  }
}

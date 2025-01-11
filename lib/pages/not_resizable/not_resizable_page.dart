import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/not_resizable/not_resizable_example.dart';
import 'package:flutter/widgets.dart';

class NotResizablePage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.widget((context) => const NotResizableExample());

    sections.code('lib/pages/not_resizable/not_resizable_example.dart');
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/not_resizable/not_resizable_example.dart';
import 'package:flutter/widgets.dart';

class NotResizablePage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    widget((context) => const NotResizableExample());

    code('lib/pages/not_resizable/not_resizable_example.dart');
  }
}

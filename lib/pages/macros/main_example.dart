import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

void main() {
  //@demoflu_start:show
  DemoFluApp app = DemoFluApp(title: 'My App', rootMenus: []);
  app.macro.group('myMacro', (context, section) {
    section
      ..padding = const EdgeInsets.all(8)
      ..background = Colors.green[50]
      ..solidBorder(color: Colors.green)
      ..heading('Example')
      ..text(text: 'Macros are useful for reusing sections.');
  });
  //@demoflu_end:show
  app.run();
}

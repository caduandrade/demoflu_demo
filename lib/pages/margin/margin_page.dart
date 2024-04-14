import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class MarginPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'You can change the bottom and left margins.');

    text(text: 'Example:');

    widget((context) =>
            Container(height: 25, width: 100, color: Colors.green[100]))
        .marginBottom = 0;
    widget((context) =>
            Container(height: 25, width: 100, color: Colors.blue[100]))
        .marginLeft = 30;

    code('lib/pages/margin/margin_page.dart',
        title: 'The source code of this page');
  }
}

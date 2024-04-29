import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class MarginPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(text: 'You can change the bottom and left margins.');

    sections.text(text: 'Example:');

    sections
        .widget((context) =>
            Container(height: 25, width: 100, color: Colors.green[100]))
        .marginBottom = 0;
    sections
        .widget((context) =>
            Container(height: 25, width: 100, color: Colors.blue[100]))
        .marginLeft = 30;

    sections.code('lib/pages/margin/margin_page.dart',
        title: 'The source code of this page');

    return sections;
  }
}

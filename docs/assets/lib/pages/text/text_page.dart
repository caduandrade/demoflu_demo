import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class TextPage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.text(text: 'You can add texts using the textSection method.');

    sections.text(icon: Icons.check, text: 'The text can start with an icon.');

    sections.code('lib/pages/text/text_page.dart',
        title: 'The source code of this page');
  }
}

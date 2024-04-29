import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class TextPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(text: 'You can add texts using the textSection method.');

    sections.text(icon: Icons.check, text: 'The text can start with an icon.');

    sections.code('lib/pages/text/text_page.dart',
        title: 'The source code of this page');

    return sections;
  }
}

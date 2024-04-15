import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class TextPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'You can add texts using the textSection method.');

    text(icon: Icons.check, text: 'The text can start with an icon.');

    code('lib/pages/text/text_page.dart',
        title: 'The source code of this page');
  }
}
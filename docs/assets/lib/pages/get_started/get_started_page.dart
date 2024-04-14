import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class GetStartedPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    heading('Welcome to DemoFlu');

    text()
      ..add('Allows you to create demonstrations by structuring')
      ..add(' them into pages and sections.');

    text()
      ..add('You can create various types of sections to convey different')
      ..add(' aspects of your package or widget. These sections include:');

    BulletsSection bullets = bulletsSection();
    bullets.create(text: 'Banner');
    bullets.create(text: 'Bullets');
    bullets.create(text: 'Console output');
    bullets.create(text: 'Heading');
    bullets.create(text: 'Source code');
    bullets.create(text: 'Text');
    bullets.create(text: 'Widget example');

    heading('Creating new demo app');

    text()
      ..add('Follow these three steps to start')
      ..add(' showcasing your package widgets:');

    bullets = bulletsSection();
    bullets.create(text: 'Set up the main with the menu');
    bullets.create(text: 'Define pages, sections and contents');
    bullets.create(text: 'Build and publish');
  }
}

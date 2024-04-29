import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class GetStartedPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.heading('Welcome to DemoFlu');

    sections.text()
      ..add('Allows you to create demonstrations by structuring')
      ..add(' them into pages and sections.');

    sections.text()
      ..add('You can create various types of sections to convey different')
      ..add(' aspects of your package or widget. These sections include:');

    BulletsSection bullets = sections.bulletsSection();
    bullets.create(text: 'Banner');
    bullets.create(text: 'Bullets');
    bullets.create(text: 'Console output');
    bullets.create(text: 'Heading');
    bullets.create(text: 'Source code');
    bullets.create(text: 'Text');
    bullets.create(text: 'Widget example');

    sections.heading('Creating new demo app');

    sections.text()
      ..add('Follow these three steps to start')
      ..add(' showcasing your package widgets:');

    bullets = sections.bulletsSection();
    bullets.create(text: 'Set up the main with the menu');
    bullets.create(text: 'Define pages, sections and contents');
    bullets.create(text: 'Build and publish');

    return sections;
  }
}

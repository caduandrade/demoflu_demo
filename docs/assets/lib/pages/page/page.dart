import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text(text: 'This is where you can demonstrate your package.');

    sections.text()
      ..add('To create a page, you simply need to have a class')
      ..add(' extending DemoFluPage.');

    sections.text()
      ..add('Sections are created using specialized methods,')
      ..add(' which should be invoked within the buildSections method.');

    sections.code('lib/pages/page/empty_page.dart', title: 'Example');

    return sections;
  }
}

import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    text(text: 'This is where you can demonstrate your package.');

    text()
      ..add('To create a page, you simply need to have a class')
      ..add(' extending DemoFluPage.');

    text()
      ..add('Sections are created using specialized methods,')
      ..add(' which should be invoked within the initialize method.');

    code('lib/pages/page/empty_page.dart', title: 'Example');
  }
}

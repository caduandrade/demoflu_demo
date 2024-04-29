import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class CodePage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.text()
      ..add('You can show any source code using the code section method')
      ..add(' by setting the path to the source file code.');

    sections.code('lib/pages/code/simple_code_page.dart', title: 'Example');

    sections.warningBanner()
      ..add('The file path needs to be in the assets section of the')
      ..add(' pubspec.yaml file. Remember that you can specify an')
      ..add(' entire directory instead of individual files.');

    sections.code('lib/pages/code/assets.txt',
        title: 'Assets example in pubspec.yaml');

    sections.heading('Font');

    sections.text()
      ..add('The expected font family name for the code section is "code".')
      ..add(' It is possible to define a font for this section')
      ..add(' in the pubspec.yaml if desired.');

    sections.code('lib/pages/code/fonts.txt',
        title: 'Example of a monospaced font');

    return sections;
  }
}

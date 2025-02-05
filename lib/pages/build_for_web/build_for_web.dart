import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class BuildForWeb extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.code('lib/pages/build_for_web/build_for_web.txt',
        title: 'Build the demo app');

    sections.tipBanner(text: 'Use --base-href if necessary');
  }
}

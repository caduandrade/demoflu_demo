import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class BuildForWeb extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    code('lib/pages/build_for_web/build_for_web.txt',
        title: 'Build the demo app');

    tipBanner(text: 'Use --base-href if necessary');
  }
}

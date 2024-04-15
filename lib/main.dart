import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/banner/banner_page.dart';
import 'package:demoflu_demo/pages/bootstrap/boostrap.dart';
import 'package:demoflu_demo/pages/border/border_page.dart';
import 'package:demoflu_demo/pages/build_for_web/build_for_web.dart';
import 'package:demoflu_demo/pages/code/code_page.dart';
import 'package:demoflu_demo/pages/console/console_page.dart';
import 'package:demoflu_demo/pages/get_started/get_started_page.dart';
import 'package:demoflu_demo/pages/group/group_page.dart';
import 'package:demoflu_demo/pages/listenable/listenable_page.dart';
import 'package:demoflu_demo/pages/macros/macros_page.dart';
import 'package:demoflu_demo/pages/mark/mark_page.dart';
import 'package:demoflu_demo/pages/page/page.dart';
import 'package:demoflu_demo/pages/margin/margin_page.dart';
import 'package:demoflu_demo/pages/stateful/stateful_page.dart';
import 'package:demoflu_demo/pages/stateless/stateless_page.dart';
import 'package:demoflu_demo/pages/text/text_page.dart';
import 'package:flutter/material.dart';

void main() {
  DemoFluApp app = DemoFluApp(title: 'DemoFlu (2.2.0)', rootMenus: _rootMenus);
  app.macro.group('myMacro', (context, section) {
    section
      ..padding = const EdgeInsets.all(8)
      ..background = Colors.green[50]
      ..solidBorder(color: Colors.green)
      ..heading('Example')
      ..text(text: 'Macros are useful for reusing sections.');
  });
  app.run();
}

List<DemoMenuItem> get _rootMenus => [
      DemoMenuItem('Get started', page: () => GetStartedPage()),
      DemoMenuItem('Bootstrap', page: () => BootstrapPage()),
      DemoMenuItem('Page', page: () => AboutPage()),
      DemoMenuItem('Page sections', children: [
        DemoMenuItem('Code',
            page: () => CodePage(),
            children: [DemoMenuItem('Marked code', page: () => MarkPage())]),
        DemoMenuItem('Text', page: () => TextPage()),
        DemoMenuItem('Margin', page: () => MarginPage()),
        DemoMenuItem('Banner', page: () => BannerPage()),
        DemoMenuItem('Widget', children: [
          DemoMenuItem('Stateless', page: () => StatelessPage()),
          DemoMenuItem('Stateful', page: () => StatefulPage()),
          DemoMenuItem('Listenable', page: () => ListenablePage())
        ]),
        DemoMenuItem('Border', page: () => BorderPage()),
        DemoMenuItem('Group', page: () => GroupPage()),
        DemoMenuItem('Console', page: () => ConsolePage())
      ]),
      DemoMenuItem('Macros', page: () => MacrosPage()),
      DemoMenuItem('Build for web', page: () => BuildForWeb())
    ];

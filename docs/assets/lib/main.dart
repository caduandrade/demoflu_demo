import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/banner_page.dart';
import 'package:demoflu_demo/pages/boostrap.dart';
import 'package:demoflu_demo/pages/build_for_web.dart';
import 'package:demoflu_demo/pages/code_page.dart';
import 'package:demoflu_demo/pages/console_page.dart';
import 'package:demoflu_demo/pages/get_started_page.dart';
import 'package:demoflu_demo/pages/listenable_page.dart';
import 'package:demoflu_demo/pages/marks_page.dart';
import 'package:demoflu_demo/pages/page.dart';
import 'package:demoflu_demo/pages/stateful_page.dart';
import 'package:demoflu_demo/pages/stateless_page.dart';
import 'package:demoflu_demo/pages/text_page.dart';

void main() {
  DemoFluApp(
          title: 'DemoFlu (2.0.0)',
          rootMenus: [_getStarted, _main, _page, _pageSections, _buildForWeb])
      .run();
}

DemoMenuItem get _getStarted =>
    DemoMenuItem('Get started', page: () => GetStartedPage());

DemoMenuItem get _main =>
    DemoMenuItem('Bootstrap', page: () => BootstrapPage());

DemoMenuItem get _page => DemoMenuItem('Page', page: () => Page());

DemoMenuItem get _pageSections => DemoMenuItem('Page sections',
    children: [_code, _text, _banner, _widgetSection, _console]);

DemoMenuItem get _code =>
    DemoMenuItem('Code', page: () => CodePage(), children: [_markedCode]);

DemoMenuItem get _markedCode =>
    DemoMenuItem('Marked code', page: () => MarksPage());

DemoMenuItem get _text => DemoMenuItem('Text', page: () => TextPage());

DemoMenuItem get _banner => DemoMenuItem('Banner', page: () => BannerPage());

DemoMenuItem get _widgetSection =>
    DemoMenuItem('Widget', children: [_stateless, _stateful, _listenable]);

DemoMenuItem get _stateless =>
    DemoMenuItem('Stateless', page: () => StatelessPage());

DemoMenuItem get _stateful =>
    DemoMenuItem('Stateful', page: () => StatefulPage());

DemoMenuItem get _listenable =>
    DemoMenuItem('Listenable', page: () => ListenablePage());

DemoMenuItem get _console => DemoMenuItem('Console', page: () => ConsolePage());

DemoMenuItem get _buildForWeb =>
    DemoMenuItem('Build for web', page: () => BuildForWeb());

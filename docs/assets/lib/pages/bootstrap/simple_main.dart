import 'package:demoflu/demoflu.dart';
import 'package:demoflu_demo/pages/bootstrap/simple_get_started_page.dart';

//@demoflu_start:show
void main() {
  DemoFluApp app = DemoFluApp(title: 'MyApp (1.0.0)', rootMenus: _rootMenus);
  app.run();
}

List<DemoMenuItem> get _rootMenus =>
    [DemoMenuItem('Get started', page: () => GetStartedPage())];
//@demoflu_end:show

import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class BootstrapPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    heading('Main');

    text()
      ..add('In order to start the application, the main method needs to')
      ..add(' instantiate an object of the DemoFluApp class and execute')
      ..add(' its run method. By doing this, the application is initialized')
      ..add(' and ready to run. This setup allows to start the application')
      ..add(' without having to create it from scratch.');

    code('lib/pages/bootstrap/empty_main.dart');

    tipBanner()
      ..add('Note that in the previous example, the app was initialized')
      ..add(' with an empty menu list. Further configuration is')
      ..add(' required to populate this list');

    heading('Menu');

    text()
      ..add('The menus are defined by a list of DemoMenuItem. Each')
      ..add(' DemoMenuItem can reference a page, and it can also have')
      ..add(' other child menus, thus establishing a hierarchy.');

    code('lib/pages/bootstrap/simple_main.dart',
        title: 'Example', mark: 'show', loadMode: LoadMode.readOnlyMarked);

    tipBanner()
      ..add('You may have noticed that this demo was created')
      ..add(' using DemoFlu itself.');

    code('lib/main.dart', title: 'This is the main source code for this demo');
  }
}
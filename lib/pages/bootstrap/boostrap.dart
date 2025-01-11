import 'package:demoflu/demoflu.dart';
import 'package:flutter/widgets.dart';

class BootstrapPage extends DemoFluPage {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.heading('Main');

    sections.text()
      ..add('In order to start the application, the main method needs to')
      ..add(' instantiate an object of the DemoFluApp class and execute')
      ..add(' its run method. By doing this, the application is initialized')
      ..add(' and ready to run. This setup allows to start the application')
      ..add(' without having to create it from scratch.');

    sections.code('lib/pages/bootstrap/empty_main.dart');

    sections.tipBanner()
      ..add('Note that in the previous example, the app was initialized')
      ..add(' with an empty menu list. Further configuration is')
      ..add(' required to populate this list');

    sections.heading('Menu');

    sections.text()
      ..add('The menus are defined by a list of DemoMenuItem. Each')
      ..add(' DemoMenuItem can reference a page, and it can also have')
      ..add(' other child menus, thus establishing a hierarchy.');

    sections.code('lib/pages/bootstrap/simple_main.dart',
        title: 'Example', mark: 'show', loadMode: LoadMode.readOnlyMarked);

    sections.tipBanner()
      ..add('You may have noticed that this demo was created')
      ..add(' using DemoFlu itself.');

    sections.code('lib/main.dart',
        title: 'This is the main source code for this demo');
  }
}
